package org.zkpk.dao;

import org.zkpk.model.Top10AuthorByFans;
import org.zkpk.model.WordCountByYear;
import org.zkpk.util.MysqlDataBase;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class WordCountByYearDao {
    public List<WordCountByYear> getDetailYear(int year){
        List<WordCountByYear> arrayList=new ArrayList<>();
        try {
            Connection connct = MysqlDataBase.getConnct();
            String sql = "select word ,count,year from word_count where year="+year;
            Statement createStatement = connct.createStatement();
            ResultSet executeQuery = createStatement.executeQuery(sql);
            while (executeQuery.next()) {
                WordCountByYear wdd=new WordCountByYear();
                String word=executeQuery.getString(1);
                wdd.setWord(word);
                Integer count=executeQuery.getInt(2);
                wdd.setCount(count);
                wdd.setYear(year);
                arrayList.add(wdd);
            }
            MysqlDataBase.getClose(connct, createStatement, executeQuery);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return arrayList;
    }

    public static void main(String []args){
        WordCountByYearDao test =new WordCountByYearDao();
        List<WordCountByYear> a=new ArrayList<>();
        a=test.getDetailYear(2016);
        for (WordCountByYear An:a) {
            System.out.println(An.getWord()+" "+An.getCount()+" "+An.getYear()+" ");
        }
    }
}
