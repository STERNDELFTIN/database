package com.example.demo;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class HomeshoppingProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(HomeshoppingProjectApplication.class, args);
	}
	
	// DB 연결 테스트
	private static final Logger logger = LoggerFactory.getLogger(HomeshoppingProjectApplication.class);
	
	@Bean
	CommandLineRunner testDBCon(DataSource dataSource)
	{
		return arg -> {
			try {
				dataSource.getConnection().close();
				logger.info("Database Connection Success");
			}
			catch (Exception e) {
				logger.error("Database Connection Failed");
			}
		};
	}

}
