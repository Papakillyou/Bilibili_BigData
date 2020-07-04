package org.zkpk.dao;

import org.zkpk.model.Top10AuthorByFans;
import org.zkpk.model.UpdateCountByLength;
import org.zkpk.util.MysqlDataBase;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UpdateCountByLengthDao {
    public UpdateCountByLength getDetail() throws SQLException {
        UpdateCountByLength updateCountByLength =new UpdateCountByLength();
        try {
            Connection connct = MysqlDataBase.getConnct();
            String sql = "select 0to1,1to2,2to3,3to4,4to5,5to from videolengthrange_updatecount";
            Statement createStatement = connct.createStatement();
            ResultSet executeQuery = createStatement.executeQuery(sql);
            while (executeQuery.next()) {
                updateCountByLength.setZeroToOne(executeQuery.getInt(1));
                updateCountByLength.setOneToTwo(executeQuery.getInt(2));
                updateCountByLength.setTwoToThree(executeQuery.getInt(3));
                updateCountByLength.setThreeToFour(executeQuery.getInt(4));
                updateCountByLength.setFourToFive(executeQuery.getInt(5));
                updateCountByLength.setFiveTo(executeQuery.getInt(6));
            }
            MysqlDataBase.getClose(connct, createStatement, executeQuery);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return updateCountByLength;
    }

    public static void main(String []args) throws SQLException {
        UpdateCountByLengthDao test =new UpdateCountByLengthDao();
        UpdateCountByLength a= test.getDetail();
        System.out.println(a.getZeroToOne()+" "+a.getOneToTwo()+" "+a.getTwoToThree()+" "+a.getThreeToFour()+" "+a.getFourToFive()+" "+a.getFiveTo());
    }
}
