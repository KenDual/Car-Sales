package com.maiphuhai.service;

import com.maiphuhai.model.Cars;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.util.List;

@Service
public class CarService {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private final RowMapper<Cars> map = (ResultSet rs, int i) -> {
        Cars car = new Cars();
        car.setCarId(rs.getInt("CarId"));
        car.setModelId(rs.getInt("ModelId"));
        car.setLicensePlate(rs.getString("LicensePlate"));
        car.setManufactureYear(rs.getInt("ManufactureYear"));
        car.setPrice(rs.getDouble("Price"));
        car.setConditionId(rs.getInt("ConditionId"));
        car.setMileage(rs.getInt("Mileage"));
        car.setExteriorColor(rs.getString("ExteriorColor"));

        // Xử lý datetime -> LocalDate
        if (rs.getTimestamp("CreatedAt") != null) {
            car.setCreatedAt(rs.getTimestamp("CreatedAt").toLocalDateTime());
        }
        if (rs.getTimestamp("ModifiedAt") != null) {
            car.setModifiedAt(rs.getTimestamp("ModifiedAt").toLocalDateTime());
        }
        car.setDeleted(rs.getBoolean("IsDeleted"));
        return car;
    };
    // Lấy tất cả xe (chưa xóa)
    public List<Cars> getAllCars() {
        String sql = "SELECT * FROM Cars WHERE IsDeleted = 0";
        return jdbcTemplate.query(sql, map);
    }

    // Lấy xe theo ID
    public Cars getCarById(int id) {
        String sql = "SELECT * FROM Cars WHERE CarId = ? AND IsDeleted = 0";
        try {
            return jdbcTemplate.queryForObject(sql, map, id);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    // Thêm xe mới
    public int createCar(Cars car) {
        String sql = "INSERT INTO Cars ("
                + "ModelId, LicensePlate, ManufactureYear, "
                + "Price, ConditionId, Mileage, ExteriorColor"
                + ") VALUES (?, ?, ?, ?, ?, ?, ?)";

        return jdbcTemplate.update(sql,
                car.getModelId(),
                car.getLicensePlate(),
                car.getManufactureYear(),
                car.getPrice(),
                car.getConditionId(),
                car.getMileage(),
                car.getExteriorColor());
    }

    // Cập nhật thông tin xe
    public int updateCar(Cars car) {
        String sql = "UPDATE Cars SET "
                + "ModelId = ?, "
                + "LicensePlate = ?, "
                + "ManufactureYear = ?, "
                + "Price = ?, "
                + "ConditionId = ?, "
                + "Mileage = ?, "
                + "ExteriorColor = ?, "
                + "ModifiedAt = SYSDATETIME() "
                + "WHERE CarId = ? AND IsDeleted = 0";

        return jdbcTemplate.update(sql,
                car.getModelId(),
                car.getLicensePlate(),
                car.getManufactureYear(),
                car.getPrice(),
                car.getConditionId(),
                car.getMileage(),
                car.getExteriorColor(),
                car.getCarId());
    }

    // Xóa mềm (đánh dấu đã xóa)
    public int deleteCar(int id) {
        String sql = "UPDATE Cars SET IsDeleted = 1, ModifiedAt = SYSDATETIME() WHERE CarId = ?";
        return jdbcTemplate.update(sql, id);
    }

    // Lấy xe theo biển số
    public Cars getCarByLicensePlate(String licensePlate) {
        String sql = "SELECT * FROM Cars WHERE LicensePlate = ? AND IsDeleted = 0";
        try {
            return jdbcTemplate.queryForObject(sql, map, licensePlate);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    // Kiểm tra biển số đã tồn tại chưa (cho thao tác tạo mới)
    public boolean licensePlateExists(String licensePlate) {
        String sql = "SELECT COUNT(*) FROM Cars WHERE LicensePlate = ? AND IsDeleted = 0";
        Integer count = jdbcTemplate.queryForObject(sql, Integer.class, licensePlate);
        return count != null && count > 0;
    }

    // Kiểm tra biển số đã tồn tại (cho thao tác cập nhật)
    public boolean licensePlateExistsForOtherCar(int carId, String licensePlate) {
        String sql = "SELECT COUNT(*) FROM Cars WHERE LicensePlate = ? AND CarId <> ? AND IsDeleted = 0";
        Integer count = jdbcTemplate.queryForObject(sql, Integer.class, licensePlate, carId);
        return count != null && count > 0;
    }
}
