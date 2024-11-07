import { useState, useEffect } from "react";
import { Table, Button, Select, InputNumber, message } from "antd";
import axios from "axios";
import { URL } from "../../utils";
import "../style/CommentsPage.css";

const { Option } = Select;

const CMSComments = () => {
  const [statusFilter, setStatusFilter] = useState("None");
  const [showCount, setShowCount] = useState(10);
  const [selectedRows, setSelectedRows] = useState([]);
  const [dataSource, setDataSource] = useState([]);
  const [isLoading, setIsLoading] = useState(true);

  // Fetch comments data from backend
  useEffect(() => {
    const fetchComments = async () => {
      try {
        setIsLoading(true);
        const response = await axios.get(`${URL}/reviews`);
        console.log("Fetched comments data:", response.data);
        setDataSource(response.data);
      } catch (error) {
        console.error("Failed to fetch comments:", error);
      } finally {
        setIsLoading(false);
      }
    };

    fetchComments();
  }, []);

  // Handle filter change
  const handleStatusChange = (value) => {
    setStatusFilter(value);
  };

  // Handle show count change
  const handleShowCountChange = (value) => {
    setShowCount(value);
  };

  // Approve selected comments
  const handleApprove = async () => {
    try {
      await Promise.all(
        selectedRows.map(async (commentId) => {
          await axios.put(`${URL}/reviews/${commentId}/approve`);
        })
      );
      setDataSource((prevDataSource) =>
        prevDataSource.map((comment) =>
          selectedRows.includes(comment.id)
            ? { ...comment, status: "Approved" }
            : comment
        )
      );
      message.success("Selected comments approved successfully");
      setSelectedRows([]);
    } catch (error) {
      message.error("Failed to approve comments");
      console.error("Failed to approve comments:", error);
    }
  };

  // Delete selected comments
  const handleDelete = async () => {
    try {
      await Promise.all(
        selectedRows.map(async (commentId) => {
          await axios.delete(`${URL}/reviews/${commentId}`);
        })
      );
      setDataSource((prevDataSource) =>
        prevDataSource.filter((comment) => !selectedRows.includes(comment.id))
      );
      message.success("Selected comments deleted successfully");
      setSelectedRows([]);
    } catch (error) {
      message.error("Failed to delete comments");
      console.error("Failed to delete comments:", error);
    }
  };

  // Update selected rows
  const onSelectChange = (selectedRowKeys) => {
    setSelectedRows(selectedRowKeys);
  };

  // Row selection configuration
  const rowSelection = {
    selectedRowKeys: selectedRows,
    onChange: onSelectChange,
    preserveSelectedRowKeys: true,
  };

  // Define table columns with rating formatted as x/10
  const columns = [
    {
      title: "Username",
      dataIndex: ["User", "username"],
      key: "username",
      align: "center",
    },
    {
      title: "Rate",
      dataIndex: "rating",
      key: "rating",
      align: "center",
      render: (rating) => `${rating}/10`,
    },
    {
      title: "Movie",
      dataIndex: ["Movie", "title"],
      key: "movie",
      align: "center",
    },
    {
      title: "Comments",
      dataIndex: "content",
      key: "content",
      align: "center",
      render: (text) => (
        <div className="comment-cell">
          {text.split("\n").map((line, i) => (
            <p key={i}>{line}</p>
          ))}
        </div>
      ),
    },
    {
      title: "Status",
      dataIndex: "status",
      key: "status",
      align: "center",
    },
  ];

  // Filter data source based on status filter
  const filteredData = dataSource.filter((comment) =>
    statusFilter === "None" ? true : comment.status === statusFilter
  );

  return (
    <div className="comments-page">
      {/* Filter Section */}
      <div className="comments-filters">
        <div className="filter-item">
          <span>Filtered by: </span>
          <Select
            value={statusFilter}
            onChange={handleStatusChange}
            style={{ width: 150 }}
          >
            <Option value="None">None</Option>
            <Option value="Approved">Approved</Option>
            <Option value="Unapproved">Unapproved</Option>
          </Select>
        </div>
        <div className="filter-item">
          <span>Shows: </span>
          <InputNumber
            min={1}
            max={100}
            value={showCount}
            onChange={handleShowCountChange}
          />
        </div>
      </div>

      {/* Table Section */}
      <Table
        rowSelection={rowSelection}
        columns={columns}
        dataSource={filteredData}
        pagination={{ pageSize: showCount }}
        rowKey={(record) => record.id}
        className="custom-table"
        loading={isLoading}
      />

      {/* Action Buttons */}
      <div className="comments-actions">
        <Button
          className="ant-btn-approve"
          onClick={handleApprove}
          disabled={selectedRows.length === 0}
        >
          Approve
        </Button>
        <Button
          className="ant-btn-delete"
          onClick={handleDelete}
          disabled={selectedRows.length === 0}
        >
          Delete
        </Button>
      </div>
    </div>
  );
};

export default CMSComments;
