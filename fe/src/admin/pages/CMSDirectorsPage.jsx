import { useState, useEffect } from "react";
import {
  Table,
  Button,
  Modal,
  Form,
  Input,
  Space,
  DatePicker,
  message,
  Select,
  InputNumber,
} from "antd";
import moment from "moment";
import {
  EditOutlined,
  DeleteOutlined,
  InfoCircleOutlined,
} from "@ant-design/icons";
import axios from "axios";
import "../style/DirectorPage.css";

const { Option } = Select;

const CMSDirectorsPage = () => {
  const [directorsData, setDirectorsData] = useState([]);
  const [countries, setCountries] = useState([]);
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [isDetailModalOpen, setIsDetailModalOpen] = useState(false);
  const [editingDirector, setEditingDirector] = useState(null);
  const [viewingDirector, setViewingDirector] = useState(null);
  const [showCount, setShowCount] = useState(10);
  const [form] = Form.useForm();
  const [pagination, setPagination] = useState({
    current: 1,
    pageSize: showCount,
  });

  // Fetch directors and countries data
  useEffect(() => {
    fetchDirectors();
    fetchCountries();
  }, []);

  const fetchDirectors = async () => {
    try {
      const response = await axios.get(
        "http://localhost:3000/api/admin/directors"
      );
      setDirectorsData(
        response.data.map((director) => ({ ...director, key: director.id }))
      );
    } catch (error) {
      message.error("Failed to fetch directors");
    }
  };

  const fetchCountries = async () => {
    try {
      const response = await axios.get(
        "http://localhost:3000/api/admin/country"
      );
      setCountries(response.data);
    } catch (error) {
      message.error("Failed to fetch countries");
    }
  };

  const handleEdit = (record) => {
    setEditingDirector(record);
    form.setFieldsValue({
      name: record.name,
      birthdate: record.birthdate ? moment(record.birthdate) : null,
      countryId: record.countryId,
      biography: record.biography,
      image: record.image,
    });
    setIsModalOpen(true);
  };

  const handleDelete = async (id) => {
    try {
      await axios.delete(`http://localhost:3000/api/admin/directors/${id}`);
      message.success("Director deleted successfully");
      fetchDirectors();
    } catch (error) {
      message.error("Failed to delete director");
    }
  };

  const handleSave = async (values) => {
    try {
      const payload = {
        name: values.name,
        birthdate: values.birthdate
          ? values.birthdate.format("YYYY-MM-DD")
          : null,
        countryId: values.countryId,
        biography: values.biography,
        image: values.image,
      };

      if (editingDirector) {
        await axios.put(
          `http://localhost:3000/api/admin/directors/${editingDirector.id}`,
          payload
        );
        message.success("Director updated successfully");
      } else {
        await axios.post("http://localhost:3000/api/admin/directors", payload);
        message.success("Director added successfully");
      }

      fetchDirectors();
      setIsModalOpen(false);
      setEditingDirector(null);
      form.resetFields();
    } catch (error) {
      message.error("Failed to save director");
    }
  };

  const handleAdd = () => {
    setEditingDirector(null);
    form.resetFields();
    setIsModalOpen(true);
  };

  const handleShowCountChange = (value) => {
    setShowCount(value);
  };

  const columns = [
    {
      title: "No",
      key: "no",
      align: "center",
      render: (text, record, index) =>
        index + 1 + (pagination.current - 1) * pagination.pageSize,
    },
    {
      title: "Name",
      dataIndex: "name",
      key: "name",
    },
    {
      title: "Country",
      dataIndex: "countryId",
      key: "countryId",
      render: (countryId) => {
        const country = countries.find((c) => c.countryId === countryId);
        return country ? country.name : "Unknown";
      },
    },
    {
      title: "Actions",
      key: "actions",
      align: "center",
      render: (text, record) => (
        <Space size="middle">
          <Button
            className="ant-btn-edit"
            icon={<EditOutlined />}
            onClick={() => handleEdit(record)}
          />
          <Button
            className="ant-btn-delete"
            icon={<DeleteOutlined />}
            onClick={() => handleDelete(record.id)}
          />
        </Space>
      ),
    },
  ];

  return (
    <div className="directors-page">
      <div className="directors-header">
        <h2>Directors Management</h2>
        <div className="controls">
          <div className="filter-item">
            <span>Show:</span>
            <InputNumber
              min={1}
              max={100}
              value={showCount}
              onChange={handleShowCountChange}
            />
          </div>
          <Button  className="ant-btn-new-director" onClick={handleAdd}>
            + New Director
          </Button>
        </div>
      </div>
      <Table
        columns={columns}
        dataSource={directorsData}
        pagination={{
          current: pagination.current,
          pageSize: pagination.pageSize,
          onChange: (page, pageSize) => {
            setPagination({ current: page, pageSize });
          },
        }}
        className="custom-table"
        rowKey={(record) => record.id}
      />

      {/* Modal for adding/editing director */}
      <Modal
        title={editingDirector ? "Edit Director" : "Add Director"}
        open={isModalOpen}
        onCancel={() => setIsModalOpen(false)}
        onOk={form.submit}
      >
        <Form form={form} layout="vertical" onFinish={handleSave}>
          <Form.Item
            label="Name"
            name="name"
            rules={[
              { required: true, message: "Please input the director's name!" },
            ]}
          >
            <Input />
          </Form.Item>
          <Form.Item
            label="Country"
            name="countryId"
            rules={[{ required: true, message: "Please select a country!" }]}
          >
            <Select placeholder="Select a country">
              {countries.map((country) => (
                <Option key={country.countryId} value={country.countryId}>
                  {country.name}
                </Option>
              ))}
            </Select>
          </Form.Item>
          <Form.Item label="Biography" name="biography">
            <Input.TextArea rows={4} />
          </Form.Item>
          <Form.Item label="Image URL" name="image">
            <Input />
          </Form.Item>
        </Form>
      </Modal>
    </div>
  );
};

export default CMSDirectorsPage;
