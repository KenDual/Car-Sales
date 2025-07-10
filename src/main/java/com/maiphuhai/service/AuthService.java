package com.maiphuhai.service;

import com.maiphuhai.model.Users;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

@Service
public class AuthService {
    @Autowired
    private JdbcTemplate jdbc;   // jdbcTemplate đã được Spring cấu hình qua DataSource

    /* ------------------ RowMapper dùng chung ------------------ */
    private static final RowMapper<Users> USER_MAPPER = new RowMapper<Users>() {
        @Override
        public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
            return new Users(
                    rs.getInt("UserId"),
                    rs.getString("Email"),
                    rs.getString("Password"),
                    rs.getString("Role")
            );
        }
    };

    /* ============================================================
       1. ĐĂNG NHẬP
       ============================================================ */
    public Users login(String email, String rawPassword) {
        String sql = "SELECT * FROM Users WHERE Email = ? AND Password = ?";
        return jdbc.query(sql, USER_MAPPER, email, rawPassword)
                   .stream()
                   .findFirst()
                   .orElse(null);     // trả về null nếu sai tài khoản
    }

    /* ============================================================
       2. TẠO TÀI KHOẢN
       ============================================================ */
    public boolean register(Users user) {
        if (existsByEmail(user.getEmail())) return false;   // email trùng

        String sql = "INSERT INTO Users (Email, Password, Role) VALUES (?,?,?)";
        int rows = jdbc.update(sql,
                user.getEmail(),
                user.getPassword(),  // ⚠️ nên encode!
                user.getRole());

        return rows == 1;
    }

    /* ============================================================
       3. ĐỔI MẬT KHẨU
       ============================================================ */
    public boolean changePassword(int userId, String newRawPassword) {
        String sql = "UPDATE Users SET Password = ? WHERE UserId = ?";
        return jdbc.update(sql, newRawPassword, userId) == 1;
    }

    /* ---------- helper riêng ---------- */
    public boolean existsByEmail(String email) {
        String sql = "SELECT COUNT(*) FROM Users WHERE Email = ?";
        Integer cnt = jdbc.queryForObject(sql, Integer.class, email);
        return cnt != null && cnt > 0;
    }
}
