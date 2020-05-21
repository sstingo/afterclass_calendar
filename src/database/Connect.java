package database;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connect {

  public static Connection getConnection() throws Exception {
    try {

      String driver = "com.mysql.jdbc.Driver";
      String url = "jdbc:mysql://127.0.0.1/afterclass_db";
      String username = "root";
      String password = "";
      Class.forName(driver);

      System.out.println("Connecting to database...");
      Connection conn = DriverManager.getConnection(url, username, password);
      System.out.println("Connected");

      return conn;

    } catch (Exception e) {

      System.out.println(e);

    }

    return null;
  }

}
