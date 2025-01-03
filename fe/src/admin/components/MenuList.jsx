import { Menu } from "antd";
import { Link, useNavigate } from "react-router-dom";
import {
  HomeOutlined,
  VideoCameraOutlined,
  FlagOutlined,
  TrophyOutlined,
  TagsOutlined,
  UserOutlined,
  CommentOutlined,
  LogoutOutlined,
  TeamOutlined,
} from "@ant-design/icons";

const MenuList = ({ darkTheme }) => {
  const navigate = useNavigate();

  // Fungsi handleLogout
  const handleLogout = () => {
    localStorage.removeItem("token"); // Hapus token dari localStorage
    navigate("/login"); // Arahkan ke halaman login
  };

  return (
    <Menu
      theme={darkTheme ? "dark" : "light"}
      mode="inline"
      className="menuCMS"
    >
      <Menu.SubMenu key="movies" icon={<VideoCameraOutlined />} title="Movies">
        <Menu.Item key="validateMovies">
          <Link to="/cms/movies-approved">Validate</Link>
        </Menu.Item>
        <Menu.Item key="InputNewMovies">
          <Link to="/cms/movies-input">Input New Movies</Link>
        </Menu.Item>
      </Menu.SubMenu>
      <Menu.Item key="countries" icon={<FlagOutlined />}>
        <Link to="/cms/countries">Countries</Link>
      </Menu.Item>
      <Menu.Item key="genres" icon={<TagsOutlined />}>
        <Link to="/cms/genres">Genres</Link>
      </Menu.Item>
      <Menu.Item key="celebs" icon={<UserOutlined />}>
        <Link to="/cms/celebs">Celebs</Link>
      </Menu.Item>
      <Menu.Item key="directors" icon={<TeamOutlined />}>
        <Link to="/cms/directors">Directors</Link>
      </Menu.Item>
      <Menu.Item key="comments" icon={<CommentOutlined />}>
        <Link to="/cms/comments">Comments</Link>
      </Menu.Item>
      <Menu.Item key="users" icon={<UserOutlined />}>
        <Link to="/cms/users">Users</Link>
      </Menu.Item>
      <Menu.Item
        key="logout"
        icon={<LogoutOutlined />}
        onClick={handleLogout} // Tambahkan handler logout di sini
      >
        Logout
      </Menu.Item>
    </Menu>
  );
};

export default MenuList;
