package org.zkpk.dao;

import org.zkpk.model.UpdateCountByDate;
import org.zkpk.util.MysqlDataBase;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UpdateCountByDateDao {
    public UpdateCountByDate getUpdateCountByDate()throws SQLException{
        UpdateCountByDate updateCountByDate=new UpdateCountByDate();
        try{
            Connection connct = MysqlDataBase.getConnct();
            String sql = "select today,month,year,total,monday,tuesday,wednesday,thursday,friday,saturday,sunday from videodate_updatecount";
            System.out.println(sql);
            Statement createStatement = connct.createStatement();
            ResultSet executeQuery = createStatement.executeQuery(sql);
            while (executeQuery.next()) {
                updateCountByDate.setToday(executeQuery.getInt(1));
                updateCountByDate.setMonth(executeQuery.getInt(2));
                updateCountByDate.setYear(executeQuery.getInt(3));
                updateCountByDate.setTotal(executeQuery.getInt(4));
                updateCountByDate.setMonday(executeQuery.getInt(5));
                updateCountByDate.setTuesday(executeQuery.getInt(6));
                updateCountByDate.setWednesday(executeQuery.getInt(7));
                updateCountByDate.setThursday(executeQuery.getInt(8));
                updateCountByDate.setFriday(executeQuery.getInt(9));
                updateCountByDate.setSaturday(executeQuery.getInt(10));
                updateCountByDate.setSunday(executeQuery.getInt(11));
            }
            MysqlDataBase.getClose(connct, createStatement, executeQuery);
        }catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return updateCountByDate;
    }

    public static void main(String []args) throws SQLException {
        UpdateCountByDateDao test =new UpdateCountByDateDao();
        UpdateCountByDate a= test.getUpdateCountByDate();
        System.out.println(a.getYear());
    }
}
