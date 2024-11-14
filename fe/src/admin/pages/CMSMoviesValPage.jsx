import { useState, useEffect } from "react";
import {
  Table,
  Button,
  Select,
  Modal,
  Form,
  Input,
  InputNumber,
  message,
  Space,
} from "antd";
import { EditOutlined, DeleteOutlined, CheckOutlined } from "@ant-design/icons";
import axios from "axios";
import { URL } from "../../utils";
import "../style/MoviesValidate.css";

const { Option } = Select;

const CMSmoviesValidate = () => {
  const [statusFilter, setStatusFilter] = useState("None");
  const [showCount, setShowCount] = useState(10);
  const [dataSource, setDataSource] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [form] = Form.useForm();
  const [selectedMovie, setSelectedMovie] = useState(null);
  const [isEditModalOpen, setIsEditModalOpen] = useState(false);
  const [editingMovie, setEditingMovie] = useState(null);
  const [pagination, setPagination] = useState({
    current: 1,
    pageSize: showCount,
  });

  // Fetch movies data from backend
  useEffect(() => {
    const fetchMovies = async () => {
      try {
        setIsLoading(true);
        const response = await axios.get(`${URL}/admin/movie`);
        const filteredData = response.data.filter(
          (movie) =>
            statusFilter === "None" ||
            (statusFilter === "Approved" && movie.approval_status === 1) ||
            (statusFilter === "Unapproved" && movie.approval_status === 0)
        );
        setDataSource(filteredData);
        console.log("Fetched movies data:", response.data);
      } catch (error) {
        console.error("Error fetching movies:", error);
        message.error("Failed to fetch movies data");
      } finally {
        setIsLoading(false);
      }
    };

    fetchMovies();
  }, [statusFilter]);

  // Handle filter change
  const handleStatusChange = (value) => {
    setStatusFilter(value);
  };

  const handleShowCountChange = (value) => {
    setShowCount(value);
    setPagination({ ...pagination, pageSize: value, current: 1 });
  };

  // Aksi: Edit, Delete, Approve
  const handleEdit = async (record) => {
    try {
      const response = await axios.get(`${URL}/admin/movie/${record.id}`);
      const movieData = response.data;

      const actorsList = movieData.Actors?.map((actor) => actor.name).join(", ") || "";
      const genresList = movieData.Genres?.map((genre) => genre.name).join(", ") || "";

      const formData = {
        title: movieData.title,
        rating: movieData.rating,
        synopsis: movieData.synopsis,
        release_date: movieData.release_date,
        director: movieData.Director?.name || "",
        country: movieData.Country?.name || "",
        actors: actorsList,
        genres: genresList,
        poster_url: movieData.poster_url,
        trailer_url: movieData.trailer_url,
      };

      form.setFieldsValue(formData);
      setEditingMovie(movieData);
      setIsEditModalOpen(true);
    } catch (error) {
      message.error("Failed to fetch movie details");
      console.error("Failed to fetch movie details:", error);
    }
  };

  const handleSaveEdit = async (values) => {
    try {
      await axios.put(`${URL}/admin/movie/${editingMovie.id}`, values);
      setDataSource((prevData) =>
        prevData.map((movie) =>
          movie.id === editingMovie.id ? { ...movie, ...values } : movie
        )
      );
      message.success("Movie updated successfully");
      setIsEditModalOpen(false);
      setEditingMovie(null);
    } catch (error) {
      message.error("Failed to update movie");
      console.error("Failed to update movie:", error);
    }
  };

  const handleDelete = async (movieId) => {
    try {
      await axios.delete(`${URL}/admin/movie/${movieId}`);
      setDataSource((prevData) =>
        prevData.filter((movie) => movie.id !== movieId)
      );
      message.success("Movie deleted successfully");
    } catch (error) {
      message.error("Failed to delete movie");
      console.error("Failed to delete movie:", error);
    }
  };

  const handleApprove = async (movieId) => {
    try {
      await axios.put(`${URL}/admin/movie/${movieId}/approve`, {
        approval_status: 1,
      });
      setDataSource((prevData) =>
        prevData.map((movie) =>
          movie.id === movieId ? { ...movie, approval_status: 1 } : movie
        )
      );
      message.success("Movie approved successfully");
    } catch (error) {
      message.error("Failed to approve movie");
      console.error("Failed to approve movie:", error);
    }
  };

  // Open modal to show movie details
  const handleViewDetails = (record) => {
    setSelectedMovie(record);
    setIsModalOpen(true);
  };

  const renderMovieDetails = () => (
    <div>
      <h2>{selectedMovie.title}</h2>
      <p>
        <strong>Rating:</strong> {selectedMovie.rating}/10
      </p>
      <p>
        <strong>Release Date:</strong> {selectedMovie.release_date}
      </p>
      <p>
        <strong>Synopsis:</strong> {selectedMovie.synopsis}
      </p>
      <p>
        <strong>Director:</strong> {selectedMovie.Director?.name || "N/A"}
      </p>
      <p>
        <strong>Country:</strong> {selectedMovie.Country?.name || "N/A"}
      </p>

      <p>
        <strong>Actors:</strong>{" "}
        {selectedMovie.Actors?.map((actor) => actor.name).join(", ") || "N/A"}
      </p>
      <p>
        <strong>Genres:</strong>{" "}
        {selectedMovie.Genres?.map((genre) => genre.name).join(", ") || "N/A"}
      </p>
      <img
        src={selectedMovie.poster_url}
        alt="Poster"
        style={{ width: "100%", maxHeight: "400px", objectFit: "cover" }}
      />
      <a
        href={selectedMovie.trailer_url}
        target="_blank"
        rel="noopener noreferrer"
      >
        Watch Trailer
      </a>
    </div>
  );

  // Kolom tabel
  const columns = [
    {
      title: "No",
      key: "no",
      align: "center",
      render: (text, record, index) =>
        index + 1 + (pagination.current - 1) * pagination.pageSize,
    },
    { title: "Title", dataIndex: "title", key: "title" },
    {
      title: "Actors",
      key: "actors",
      render: (record) =>
        record.Actors?.map((actor) => actor.name).join(", ") || "N/A",
    },
    {
      title: "Genres",
      key: "genres",
      render: (record) =>
        record.Genres?.map((genre) => genre.name).join(", ") || "N/A",
    },
    {
      title: "Synopsis",
      dataIndex: "synopsis",
      key: "synopsis",
      render: (text) => <div className="synopsis-cell">{text}</div>,
    },
    {
      title: "Status",
      dataIndex: "approval_status",
      key: "status",
      align: "center",
      render: (status) =>
        status === 1 ? (
          <span style={{ color: "green", fontWeight: "bold" }}>Approved</span>
        ) : (
          <span style={{ color: "red", fontWeight: "bold" }}>Unapproved</span>
        ),
    },
    {
      title: "Actions",
      key: "actions",
      align: "center",
      render: (_, record) => (
        <Space size="middle">
          <Button
            icon={<EditOutlined />}
            onClick={() => handleEdit(record)}
            className="ant-btn-edit"
          />
          <Button
            icon={<DeleteOutlined />}
            onClick={() => handleDelete(record.id)}
            className="ant-btn-delete"
          />
          <Button
            icon={<CheckOutlined />}
            onClick={() => handleApprove(record.id)}
            className="ant-btn-approve"
            disabled={record.approval_status === 1}
          />
        </Space>
      ),
    },
  ];

  return (
    <div className="movies-validate-page">
      <div className="header">
        <h2>Validate Movies</h2>
        <div className="filters">
          <Select
            value={statusFilter}
            onChange={handleStatusChange}
            style={{ width: 150 }}
          >
            <Option value="None">None</Option>
            <Option value="Approved">Approved</Option>
            <Option value="Unapproved">Unapproved</Option>
          </Select>
          <InputNumber
            min={1}
            max={100}
            value={showCount}
            onChange={handleShowCountChange}
          />
        </div>
      </div>

      <Table
        columns={columns}
        dataSource={dataSource}
        pagination={{
          current: pagination.current,
          pageSize: pagination.pageSize,
          onChange: (page, pageSize) => {
            setPagination({ current: page, pageSize });
            setShowCount(pageSize); // Sinkronkan nilai showCount dengan pageSize yang dipilih
          },
        }}
        rowKey={(record) => record.id}
        loading={isLoading}
        className="custom-table"
      />

      <Modal
        title="Edit Movie"
        open={isEditModalOpen}
        onCancel={() => {
          setIsEditModalOpen(false);
          form.resetFields();
        }}
        onOk={() => form.submit()}
      >
        <Form form={form} layout="vertical" onFinish={handleSaveEdit}>
          <Form.Item label="Title" name="title" rules={[{ required: true }]}>
            <Input />
          </Form.Item>
          <Form.Item label="Rating" name="rating" rules={[{ required: true }]}>
            <InputNumber min={1} max={10} />
          </Form.Item>
          <Form.Item label="Synopsis" name="synopsis">
            <Input.TextArea rows={4} />
          </Form.Item>
          <Form.Item label="Release Date" name="release_date">
            <Input placeholder="YYYY-MM-DD" />
          </Form.Item>
          <Form.Item label="Director" name="director">
            <Input />
          </Form.Item>
          <Form.Item label="Country" name="country">
            <Input />
          </Form.Item>
          <Form.Item label="Actors" name="actors">
            <Input.TextArea placeholder="Comma-separated actors" />
          </Form.Item>
          <Form.Item label="Genres" name="genres">
            <Input.TextArea placeholder="Comma-separated genres" />
          </Form.Item>
          <Form.Item label="Poster URL" name="poster_url">
            <Input />
          </Form.Item>
          <Form.Item label="Trailer URL" name="trailer_url">
            <Input />
          </Form.Item>
        </Form>
      </Modal>
    </div>
  );
};

export default CMSmoviesValidate;
