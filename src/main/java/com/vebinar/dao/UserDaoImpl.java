package com.vebinar.dao;

import com.vebinar.entity.User;
import com.vebinar.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    public JdbcTemplate jdbcTemplate;

    public void save(User user) {
        String sql = "INSERT INTO vebinar.user (name, email, age) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, user.getName(), user.getEmail(), user.getAge());

    }

    public User getById(int id) {
        String sql = "SELECT * FROM vebinar.user WHERE id=?";
        return jdbcTemplate.queryForObject(sql, new UserMapper(), id);
    }

    public List<User> getByEmail(String enail) {
        String sql = "SELECT * FROM vebinar.user WHERE email=?";
        return jdbcTemplate.query(sql, new UserMapper(),enail);
    }

    public List<User> findAll() {
        String sql = "SELECT * FROM vebinar.user";
        return jdbcTemplate.query(sql, new UserMapper());
    }

    public void update(User user) {
        String sql = "UPDATE vebinar.user SET name=?, email=?, age=? WHERE id=?";
        jdbcTemplate.update(sql, user.getName(), user.getEmail(), user.getAge(), user.getId());
    }

    public void delete(int id) {
        String sql = "DELETE FROM vebinar.user WHERE id=?";
        jdbcTemplate.update(sql, id);

    }
}
