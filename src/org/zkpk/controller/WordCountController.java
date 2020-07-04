package org.zkpk.controller;

import com.sun.xml.internal.ws.api.ha.StickyFeature;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zkpk.dao.WordCountByYearDao;
import org.zkpk.model.WordCountByYear;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value="/wordcount")
public class WordCountController {

    @RequestMapping(value="/mostWord.do")
    @ResponseBody
    public JSONObject getTop20MostWord() throws SQLException {
        WordCountByYearDao wordCountByYearDao=new WordCountByYearDao();
        JSONObject json=new JSONObject();
        for(int i=2016;i<=2020;i++){
            List<WordCountByYear> arraylist= wordCountByYearDao.getDetailYear(i);
            List<String> word=new ArrayList<>();
            List<Integer> count=new ArrayList<>();
            List<Integer> year =new ArrayList<>();
//            for(int j=0;j<arraylist.size();j++){
//
//            }
            json.put("y"+String.valueOf(i),arraylist);
        }
        return json;
    }
}
