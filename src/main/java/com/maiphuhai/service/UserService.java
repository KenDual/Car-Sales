package com.maiphuhai.service;

import com.maiphuhai.model.Users;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private JdbcTemplate jdbc;
    
    private static final String SQL_INSERT  =
            "INSERT INTO Users (Email, Password, Role) VALUES (?,?,?)";

    private static final String SQL_UPDATE  =
            "UPDATE Users SET Email = ?, Password = ?, Role = ? WHERE UserId = ?";

    private static final String SQL_DELETE  =
            "DELETE FROM Users WHERE UserId = ?";

    private static final String SQL_BY_ID   =
            "SELECT * FROM Users WHERE UserId = ?";

    private static final String SQL_BY_EMAIL_PWD_ROLE =
            "SELECT * FROM Users WHERE Email = ? AND Password = ? AND Role = ?";

    //RowMapper for internal uses
    private Users mapRow(ResultSet rs, int rowNum) throws SQLException {
        Users u = new Users();
        u.setUserId(rs.getInt("UserId"));
        u.setEmail(rs.getString("Email"));
        u.setPassword(rs.getString("Password"));
        u.setRole(rs.getString("Role"));
        return u;
    }

    // ====================== CRUD ======================
    //Create
    public int save(Users u) {
        return jdbc.update(SQL_INSERT, u.getEmail(), u.getPassword(), u.getRole());
    }

    //Read
    public List<Users> findAll() {
        String sql = "SELECT * FROM Users";
        return jdbc.query(sql, this::mapRow);
    }
    
    //Find by ID
    public Optional<Users> findById(int id) {
        List<Users> list = jdbc.query(SQL_BY_ID, this::mapRow, id);
        return list.isEmpty() ? Optional.empty() : Optional.of(list.get(0));
    }

    //Update
    public void update(Users u) {
        String sql = "UPDATE users SET Email = ?, Password = ?, Role = WHERE UserId = ?";
        jdbc.update(sql, u.getEmail(), u.getPassword(), u.getRole());
    }

    //Delete
    public int delete(int id) {
        return jdbc.update(SQL_DELETE, id);
    }
    
    //Save or Update
    public int saveOrUpdate(Users u) {
        if (u.getUserId() == 0) {
            return jdbc.update(SQL_INSERT, u.getEmail(), u.getPassword(), u.getRole());
        } else {
            return jdbc.update(SQL_UPDATE, u.getEmail(), u.getPassword(), u.getRole());
        }
    }
}
