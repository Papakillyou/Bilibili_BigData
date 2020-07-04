package org.zkpk.controller;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zkpk.dao.Top10AuthorByFansDao;
import org.zkpk.dao.Top10VideoByWatchesDao;
import org.zkpk.model.Top10AuthorByFans;
import org.zkpk.model.Top10VideoByWatches;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value="/top10")
public class Top10Controller {

    @RequestMapping(value="/authorByFans.do")
    @ResponseBody
    public JSONObject getTop10AuthorByFans() throws SQLException {
        Top10AuthorByFansDao whd=new Top10AuthorByFansDao();
        ArrayList<String> author=new ArrayList<>();
        ArrayList<Integer> fans =new ArrayList<>();

        List<Top10AuthorByFans> Top10Author = whd.getTop10AuthorByFans();

        JSONObject json=new JSONObject();
        for(int i=0;i<Top10Author.size();i++){
            author.add(Top10Author.get(i).getAuthor());
            fans.add(Top10Author.get(i).getFans());
        }
        json.put("author",author);
        json.put("fans",fans);
        return json;
    }

    @RequestMapping(value="/watches.do")
    @ResponseBody
    public JSONObject getTop10Watches() throws SQLException {
        Top10VideoByWatchesDao whd=new Top10VideoByWatchesDao();
        ArrayList<String> title=new ArrayList<>();
        ArrayList<String> address=new ArrayList<>();
        ArrayList<Integer> watches =new ArrayList<>();

        List<Top10VideoByWatches> Top10Author = whd.getTop10VideoByWatches();

        JSONObject json=new JSONObject();
        for(int i=0;i<Top10Author.size();i++){
            title.add(Top10Author.get(i).getTitle());
            address.add(Top10Author.get(i).getAddress());
            watches.add(Top10Author.get(i).getWatches());
        }
        json.put("title",title);
        json.put("address",address);
        json.put("watches",watches);
        return json;
    }
}
