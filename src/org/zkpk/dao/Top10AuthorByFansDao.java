package org.zkpk.dao;

import org.zkpk.model.Top10AuthorByFans;
import org.zkpk.util.MysqlDataBase;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Top10AuthorByFansDao {
    public List<Top10AuthorByFans> getTop10AuthorByFans(){
        List<Top10AuthorByFans> arrayList = new ArrayList<Top10AuthorByFans>();
        try{
            Connection connct = MysqlDataBase.getConnct();
            String sql = "select author,fans from top10fans_author";
            System.out.println(sql);
            Statement createStatement = connct.createStatement();
            ResultSet executeQuery = createStatement.executeQuery(sql);
            while (executeQuery.next()) {
                Top10AuthorByFans top10AuthorByFans = new Top10AuthorByFans();
                top10AuthorByFans.setAuthor(executeQuery.getString(1));
                top10AuthorByFans.setFans(executeQuery.getInt(2));
                arrayList.add(top10AuthorByFans);
            }
        }catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return arrayList;
    }
}
