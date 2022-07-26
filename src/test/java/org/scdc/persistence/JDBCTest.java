package org.scdc.persistence;

import static org.junit.Assert.fail;

import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTest {

	
	@Test
	public void testConnection() {
		try {

		Class.forName("oracle.jdbc.driver.OracleDriver");
		DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.30:1521:XE",
				"scdc", "1234");
		log.info("JDBC 연결성공");

		}catch(Exception e) {
			e.printStackTrace();
			fail("연결실패");

			//fail(e.getMessage());
		}
	}//testConnection
}
