package com.vebinar.config;


//import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import javax.sql.DataSource;

@Configuration
public class DataSourceConfig {

    /*@Bean
    public DataSource createDataSource() throws Exception {

      // ComboPooledDataSource ds = new ComboPooledDataSource();
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setUrl("jdbc:postgresql://localhost:5432/vebinar");

        dataSource.setUsername("vebinar");
        dataSource.setPassword("vebinar");
        dataSource.setDriverClassName("org.postgresql.Driver");

      //  ds.setJdbcUrl("jdbc:postgresql://localhost:5432/vebinar?user=vebinar&password=vebinar");
      //  ds.setDriverClass("org.postgresql.Driver");

        return dataSource;
    }
*/
}