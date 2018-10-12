package com.vebinar.config;


import com.vebinar.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository;

import javax.sql.DataSource;

    @Configuration
    @EnableWebSecurity
    @EnableGlobalMethodSecurity(prePostEnabled = true)
    public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

       /* @Autowired
        private DataSource dataSource;*/

        @Autowired
        private UserService userService;
        @Override
        protected void configure(HttpSecurity http) throws Exception {
            http

                    .authorizeRequests()
                        .antMatchers("/","/registration/","/addorder","/add","/hello","/resources/**","/orders","/order","/add/","/addorder/","/orders/").permitAll()
                        .anyRequest().authenticated()
                    .and()
                        .formLogin()
                        .loginPage("/login")
                        .usernameParameter("name")
                        .passwordParameter("password")
                        .permitAll()
                    .and()
                        .logout()
                        .permitAll()
                    .and().csrf().csrfTokenRepository(new HttpSessionCsrfTokenRepository());
        }

        @Override
        protected void configure(AuthenticationManagerBuilder auth) throws Exception {
                    auth.userDetailsService(userService)
                    .passwordEncoder(NoOpPasswordEncoder.getInstance());
                 //   .usersByUsernameQuery("select name, password, active from users where name=?")
                  //  .authoritiesByUsernameQuery("select u.name, ur.roles from users u inner join user_role ur on u.id = ur.user_id where u.name=?");
        }
    }

