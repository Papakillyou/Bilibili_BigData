package org.zkpk.dao;

import org.zkpk.model.Top10VideoByWatches;
import org.zkpk.util.MysqlDataBase;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Top10VideoByWatchesDao {
    public List<Top10VideoByWatches> getTop10VideoByWatches(){
        List<Top10VideoByWatches> arrayList = new ArrayList<Top10VideoByWatches>();
        try{
            Connection connct = MysqlDataBase.getConnct();
            String sql = "select title,address,watches from top10watches_video";
            System.out.println(sql);
            Statement createStatement = connct.createStatement();
            ResultSet executeQuery = createStatement.executeQuery(sql);
            while (executeQuery.next()) {
                Top10VideoByWatches top10VideoByWatches = new Top10VideoByWatches();
                top10VideoByWatches.setTitle(executeQuery.getString(1));
                top10VideoByWatches.setAddress(executeQuery.getString(2));
                top10VideoByWatches.setWatches(executeQuery.getInt(3));
                arrayList.add(top10VideoByWatches);
            }
        }catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return arrayList;
    }
}
