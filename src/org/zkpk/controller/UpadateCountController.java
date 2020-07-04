package org.zkpk.controller;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zkpk.dao.UpdateCountByDateDao;
import org.zkpk.dao.UpdateCountByLengthDao;
import org.zkpk.model.UpdateCountByLength;

import java.sql.SQLException;


@Controller
@RequestMapping(value="/updatecount")
public class UpadateCountController {

    //获取今日上传视频量
    @RequestMapping(value="/today.do")
    @ResponseBody
    public int getToday(){
        UpdateCountByDateDao updateCountByDateDao=new UpdateCountByDateDao();
        int today = 0;
        try {
            today = updateCountByDateDao.getUpdateCountByDate().getToday();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return today;
    }

    //获取今月上传视频量
    @RequestMapping(value="/month.do")
    @ResponseBody
    public int getMonth(){
        UpdateCountByDateDao updateCountByDateDao=new UpdateCountByDateDao();
        int month = 0;
        try {
            month = updateCountByDateDao.getUpdateCountByDate().getMonth();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return month;
    }

    //获取今年上传视频量
    @RequestMapping(value="/year.do")
    @ResponseBody
    public int getYear(){
        UpdateCountByDateDao updateCountByDateDao=new UpdateCountByDateDao();
        int year = 0;
        try {
            year = updateCountByDateDao.getUpdateCountByDate().getYear();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return year;
    }

    //获取总的上传视频量
    @RequestMapping(value="/total.do")
    @ResponseBody
    public int getTotal(){
        UpdateCountByDateDao updateCountByDateDao=new UpdateCountByDateDao();
        int total = 0;
        try {
            total = updateCountByDateDao.getUpdateCountByDate().getTotal();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return total;
    }

    //获取在周一上传的视频量
    @RequestMapping(value="/monday.do")
    @ResponseBody
    public int getMonday(){
        UpdateCountByDateDao updateCountByDateDao=new UpdateCountByDateDao();
        int monday = 0;
        try {
            monday = updateCountByDateDao.getUpdateCountByDate().getMonday();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return monday;
    }

    //获取在周二上传的视频量
    @RequestMapping(value="/tuesday.do")
    @ResponseBody
    public int getTuesday(){
        UpdateCountByDateDao updateCountByDateDao=new UpdateCountByDateDao();
        int tuesday = 0;
        try {
            tuesday = updateCountByDateDao.getUpdateCountByDate().getTuesday();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return tuesday;
    }

    //获取在周三上传的视频量
    @RequestMapping(value="/wednesday.do")
    @ResponseBody
    public int getWednesday(){
        UpdateCountByDateDao updateCountByDateDao=new UpdateCountByDateDao();
        int wednesday = 0;
        try {
            wednesday = updateCountByDateDao.getUpdateCountByDate().getWednesday();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return wednesday;
    }

    //获取在周四上传的视频量
    @RequestMapping(value="/thursday.do")
    @ResponseBody
    public int getThursday(){
        UpdateCountByDateDao updateCountByDateDao=new UpdateCountByDateDao();
        int thursday = 0;
        try {
            thursday = updateCountByDateDao.getUpdateCountByDate().getThursday();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return thursday;
    }

    //获取在周五上传的视频量
    @RequestMapping(value="/friday.do")
    @ResponseBody
    public int getFriday(){
        UpdateCountByDateDao updateCountByDateDao=new UpdateCountByDateDao();
        int friday = 0;
        try {
            friday = updateCountByDateDao.getUpdateCountByDate().getFriday();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return friday;
    }

    //获取在周六上传的视频量
    @RequestMapping(value="/saturday.do")
    @ResponseBody
    public int getSaturday(){
        UpdateCountByDateDao updateCountByDateDao=new UpdateCountByDateDao();
        int saturday = 0;
        try {
            saturday = updateCountByDateDao.getUpdateCountByDate().getSaturday();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return saturday;
    }

    //获取在周日上传的视频量
    @RequestMapping(value="/sunday.do")
    @ResponseBody
    public int getSunday(){
        UpdateCountByDateDao updateCountByDateDao=new UpdateCountByDateDao();
        int sunday = 0;
        try {
            sunday = updateCountByDateDao.getUpdateCountByDate().getSunday();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return sunday;
    }

    //获取按视频时长统计的上传视频量
    @RequestMapping(value="/length.do")
    @ResponseBody
    public JSONObject getUpdateCountByLength(){
        UpdateCountByLengthDao updateCountByLengthDao=new UpdateCountByLengthDao();
        JSONObject json=new JSONObject();
        try {
            int ZeroToOne=updateCountByLengthDao.getDetail().getZeroToOne();
            int OneToTwo=updateCountByLengthDao.getDetail().getOneToTwo();
            int TwotoThree=updateCountByLengthDao.getDetail().getTwoToThree();
            int ThreetoFour=updateCountByLengthDao.getDetail().getThreeToFour();
            int FourToFive=updateCountByLengthDao.getDetail().getFourToFive();
            int FiveTo=updateCountByLengthDao.getDetail().getFiveTo();
            json.put("ZeroToOne",ZeroToOne);
            json.put("OneToTwo",OneToTwo);
            json.put("TwotoThree",TwotoThree);
            json.put("ThreetoFour",ThreetoFour);
            json.put("FourToFive",FourToFive);
            json.put("FiveTo",FiveTo);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return json;
    }

    //返回一周7天上传的视频量，用于折线图
    @RequestMapping(value="/week.do")
    @ResponseBody
    public JSONObject getUpdateCountByWeek(){
        UpdateCountByDateDao updateCountByDateDao=new UpdateCountByDateDao();
        JSONObject json=new JSONObject();
        try {
            int Monday=updateCountByDateDao.getUpdateCountByDate().getMonday();
            int Tuesday=updateCountByDateDao.getUpdateCountByDate().getTuesday();
            int Wednesday=updateCountByDateDao.getUpdateCountByDate().getWednesday();
            int Thursday=updateCountByDateDao.getUpdateCountByDate().getThursday();
            int Friday=updateCountByDateDao.getUpdateCountByDate().getFriday();
            int Saturday=updateCountByDateDao.getUpdateCountByDate().getSaturday();
            int Sunday=updateCountByDateDao.getUpdateCountByDate().getSunday();
            json.put("Monday",Monday);
            json.put("Tuesday",Tuesday);
            json.put("Wednesday",Wednesday);
            json.put("Thursday",Thursday);
            json.put("Friday",Friday);
            json.put("Saturday",Saturday);
            json.put("Sunday",Sunday);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return json;
    }
}
