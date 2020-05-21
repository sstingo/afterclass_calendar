package database;

import java.sql.*;

public class Main {

  public static void main(String[] args) throws Exception {

    Connection conn = Connect.getConnection();
    Statement stmt = conn.createStatement();

    String sql = "SELECT 代碼, 名稱, 性質 FROM 社團";

    ResultSet rs = stmt.executeQuery(sql);

    while (rs.next()) {
      String id = rs.getString("代碼");
      String name = rs.getString("名稱");
      String info = rs.getString("性質");

      System.out.print("代碼:" + id);
      System.out.print(", 名稱:" + name);
      System.out.println(", 性質:" + info);
    }
    
//    sql = "SELECT 名稱, 性質 FROM 社團  WHERE 代碼 = A60";
//    ResultSet rs2 = stmt.executeQuery(sql);
//    System.out.print(", 名稱:" + rs.getString("名稱"));
//    System.out.println(", 性質:" + rs.getString("性質"));

    rs.close();
    stmt.close();
    conn.close();
  }

}
