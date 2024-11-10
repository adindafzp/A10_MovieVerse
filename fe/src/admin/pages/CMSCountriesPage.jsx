import { useState, useEffect } from 'react';
import { Table, Button, Modal, Form, Input, Space, message } from 'antd';
import { EditOutlined, DeleteOutlined } from '@ant-design/icons';
import axios from 'axios';
import "../style/CountriesPage.css";

const CMSCountries = () => {
  const [countriesData, setCountriesData] = useState([]);
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [editingCountry, setEditingCountry] = useState(null);
  const [loading, setLoading] = useState(true);
  const [form] = Form.useForm();

  // Fetch data dari backend
  useEffect(() => {
    fetchCountries();
  }, []);

  const fetchCountries = async () => {
    try {
      const response = await axios.get('http://localhost:3000/api/admin/country'); // Pastikan endpoint sesuai dengan backend Anda
      setCountriesData(response.data.map(country => ({
        key: country.countryId,
        country: country.name,
      })));
      setLoading(false);
    } catch (error) {
      console.error('Error fetching countries:', error);
      message.error("Failed to fetch countries");
      setLoading(false);
    }
  };

  const handleEdit = (record) => {
    setEditingCountry(record);
    form.setFieldsValue(record);
    setIsModalOpen(true);
  };

  const handleDelete = async (countryId) => {
    try {
      await axios.delete(`http://localhost:3000/api/admin/country/${countryId}`);
      message.success("Country deleted successfully");
      fetchCountries(); // Refresh data setelah penghapusan
    } catch (error) {
      console.error('Error deleting country:', error);
      message.error("Failed to delete country");
    }
  };

  const handleSave = async (values) => {
    try {
      if (editingCountry) {
        // Update country
        await axios.put(`http://localhost:3000/api/admin/country/${editingCountry.key}`, { name: values.country });
        message.success("Country updated successfully");
      } else {
        // Create new country
        await axios.post('http://localhost:3000/api/admin/country', { name: values.country });
        message.success("Country added successfully");
      }
      fetchCountries(); // Refresh data setelah menyimpan
      setIsModalOpen(false);
      setEditingCountry(null);
      form.resetFields();
    } catch (error) {
      console.error('Error saving country:', error);
      message.error("Failed to save country");
    }
  };

  const handleAdd = () => {
    setEditingCountry(null);
    form.resetFields();
    setIsModalOpen(true);
  };

  const columns = [
    {
      title: 'No',
      key: 'no',
      align: 'center',
      render: (text, record, index) => index + 1,
    },
    {
      title: 'Country',
      dataIndex: 'country',
      key: 'country',
    },
    {
      title: 'Actions',
      key: 'actions',
      align: 'center',
      render: (text, record) => (
        <Space size="middle">
          <Button
            type="primary"
            icon={<EditOutlined />}
            onClick={() => handleEdit(record)}
          />
          <Button
            type="danger"
            icon={<DeleteOutlined />}
            onClick={() => handleDelete(record.key)}
          />
        </Space>
      ),
    },
  ];

  return (
    <div className="countries-page">
      <div className="countries-header">
        <h2>Countries Management</h2>
        <Button type="primary" onClick={handleAdd}>Add New Country</Button>
      </div>
      <Table columns={columns} dataSource={countriesData} pagination={false} loading={loading} className="custom-table" />

      <Modal
        title={editingCountry ? 'Edit Country' : 'Add Country'}
        open={isModalOpen}
        onCancel={() => setIsModalOpen(false)}
        onOk={form.submit}
      >
        <Form form={form} layout="vertical" onFinish={handleSave}>
          <Form.Item
            label="Country"
            name="country"
            rules={[{ required: true, message: 'Please input the country name!' }]}
          >
            <Input />
          </Form.Item>
        </Form>
      </Modal>
    </div>
  );
};

export default CMSCountries;