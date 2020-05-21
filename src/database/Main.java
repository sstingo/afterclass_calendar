package database;

import java.sql.*;

public class Main {

  public static void main(String[] args) throws Exception {

    Connection conn = Connect.getConnection();
    Statement stmt = conn.createStatement();

    String sql = "SELECT �N�X, �W��, �ʽ� FROM ����";

    ResultSet rs = stmt.executeQuery(sql);

    while (rs.next()) {
      String id = rs.getString("�N�X");
      String name = rs.getString("�W��");
      String info = rs.getString("�ʽ�");

      System.out.print("�N�X:" + id);
      System.out.print(", �W��:" + name);
      System.out.println(", �ʽ�:" + info);
    }
    
//    sql = "SELECT �W��, �ʽ� FROM ����  WHERE �N�X = A60";
//    ResultSet rs2 = stmt.executeQuery(sql);
//    System.out.print(", �W��:" + rs.getString("�W��"));
//    System.out.println(", �ʽ�:" + rs.getString("�ʽ�"));

    rs.close();
    stmt.close();
    conn.close();
  }

}
