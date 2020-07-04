/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : bilibili_log

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 18/06/2020 00:17:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tmp
-- ----------------------------
DROP TABLE IF EXISTS `tmp`;
CREATE TABLE `tmp`  (
  `word` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tmp
-- ----------------------------
INSERT INTO `tmp` VALUES ('洗脑', 11583, 2019);
INSERT INTO `tmp` VALUES ('循环', 10414, 2019);
INSERT INTO `tmp` VALUES ('蜜汁', 8643, 2019);
INSERT INTO `tmp` VALUES ('带感', 7735, 2019);
INSERT INTO `tmp` VALUES ('洗脑', 6883, 2018);
INSERT INTO `tmp` VALUES ('音乐', 6277, 2019);
INSERT INTO `tmp` VALUES ('洗脑', 6089, 2020);
INSERT INTO `tmp` VALUES ('循环', 5780, 2020);
INSERT INTO `tmp` VALUES ('挑战', 5654, 2019);
INSERT INTO `tmp` VALUES ('蜜汁', 4125, 2020);
INSERT INTO `tmp` VALUES ('带感', 3654, 2020);
INSERT INTO `tmp` VALUES ('爆肝', 3624, 2019);
INSERT INTO `tmp` VALUES ('暑期', 3595, 2019);
INSERT INTO `tmp` VALUES ('枪声', 3362, 2019);
INSERT INTO `tmp` VALUES ('洗脑', 3230, 2017);
INSERT INTO `tmp` VALUES ('音乐', 3025, 2018);
INSERT INTO `tmp` VALUES ('视频', 2872, 2019);
INSERT INTO `tmp` VALUES ('音乐', 2809, 2020);
INSERT INTO `tmp` VALUES ('枪声', 2615, 2018);
INSERT INTO `tmp` VALUES ('哲学', 2593, 2018);
INSERT INTO `tmp` VALUES ('视频', 2590, 2020);
INSERT INTO `tmp` VALUES ('循环', 2562, 2018);
INSERT INTO `tmp` VALUES ('丧心病狂', 2449, 2018);
INSERT INTO `tmp` VALUES ('蔡', 2443, 2019);
INSERT INTO `tmp` VALUES ('徐坤', 2205, 2019);
INSERT INTO `tmp` VALUES ('怪物', 2187, 2018);
INSERT INTO `tmp` VALUES ('音乐', 2166, 2017);
INSERT INTO `tmp` VALUES ('带', 2145, 2019);
INSERT INTO `tmp` VALUES ('电音', 2072, 2019);
INSERT INTO `tmp` VALUES ('电子竞技', 2001, 2019);
INSERT INTO `tmp` VALUES ('哲学', 1973, 2017);
INSERT INTO `tmp` VALUES ('老八', 1897, 2020);
INSERT INTO `tmp` VALUES ('配音', 1858, 2019);
INSERT INTO `tmp` VALUES ('枪声', 1857, 2017);
INSERT INTO `tmp` VALUES ('剪辑', 1810, 2019);
INSERT INTO `tmp` VALUES ('有毒', 1788, 2018);
INSERT INTO `tmp` VALUES ('带感', 1737, 2018);
INSERT INTO `tmp` VALUES ('面筋', 1691, 2018);
INSERT INTO `tmp` VALUES ('蜜汁', 1671, 2018);
INSERT INTO `tmp` VALUES ('全明星', 1659, 2016);
INSERT INTO `tmp` VALUES ('卢本伟', 1653, 2020);
INSERT INTO `tmp` VALUES ('老师', 1580, 2020);
INSERT INTO `tmp` VALUES ('大赛', 1533, 2020);
INSERT INTO `tmp` VALUES ('全明星', 1527, 2018);
INSERT INTO `tmp` VALUES ('循环', 1497, 2017);
INSERT INTO `tmp` VALUES ('音乐', 1492, 2016);
INSERT INTO `tmp` VALUES ('枪声', 1419, 2016);
INSERT INTO `tmp` VALUES ('枪声', 1371, 2020);
INSERT INTO `tmp` VALUES ('怪物', 1278, 2017);
INSERT INTO `tmp` VALUES ('♂', 1277, 2017);
INSERT INTO `tmp` VALUES ('电子竞技', 1259, 2020);
INSERT INTO `tmp` VALUES ('竞技', 1256, 2020);
INSERT INTO `tmp` VALUES ('配音', 1217, 2020);
INSERT INTO `tmp` VALUES ('全明星', 1159, 2017);
INSERT INTO `tmp` VALUES ('奥利', 1156, 2020);
INSERT INTO `tmp` VALUES ('人力', 1132, 2020);
INSERT INTO `tmp` VALUES ('电子竞技', 1130, 2017);
INSERT INTO `tmp` VALUES ('郭', 1118, 2020);
INSERT INTO `tmp` VALUES ('乐器', 1061, 2017);
INSERT INTO `tmp` VALUES ('MAD', 1043, 2018);
INSERT INTO `tmp` VALUES ('电子竞技', 876, 2016);
INSERT INTO `tmp` VALUES ('MAD', 852, 2017);
INSERT INTO `tmp` VALUES ('RAP', 801, 2016);
INSERT INTO `tmp` VALUES ('洗脑', 801, 2016);
INSERT INTO `tmp` VALUES ('非凡', 782, 2017);
INSERT INTO `tmp` VALUES ('元首', 700, 2016);
INSERT INTO `tmp` VALUES ('带感', 647, 2016);
INSERT INTO `tmp` VALUES ('蜜汁', 645, 2016);
INSERT INTO `tmp` VALUES ('非凡', 636, 2016);
INSERT INTO `tmp` VALUES ('守望', 633, 2016);
INSERT INTO `tmp` VALUES ('循环', 588, 2016);
INSERT INTO `tmp` VALUES ('王司徒', 580, 2016);
INSERT INTO `tmp` VALUES ('先锋', 576, 2016);

-- ----------------------------
-- Table structure for top10fans_author
-- ----------------------------
DROP TABLE IF EXISTS `top10fans_author`;
CREATE TABLE `top10fans_author`  (
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fans` int(11) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'This is top 10 authors with the most fans' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of top10fans_author
-- ----------------------------
INSERT INTO `top10fans_author` VALUES ('老番茄', 10767000);
INSERT INTO `top10fans_author` VALUES ('共青团中央', 6467000);
INSERT INTO `top10fans_author` VALUES ('伊丽莎白鼠', 5136000);
INSERT INTO `top10fans_author` VALUES ('指法芬芳张大仙', 4501000);
INSERT INTO `top10fans_author` VALUES ('张召忠', 3840000);
INSERT INTO `top10fans_author` VALUES ('爱做饭的芋头SAMA', 3806000);
INSERT INTO `top10fans_author` VALUES ('观察者网', 3684000);
INSERT INTO `top10fans_author` VALUES ('柚子木字幕组', 3452000);
INSERT INTO `top10fans_author` VALUES ('起小点是大腿', 3279000);
INSERT INTO `top10fans_author` VALUES ('吃素的狮子', 2926000);

-- ----------------------------
-- Table structure for top10watches_video
-- ----------------------------
DROP TABLE IF EXISTS `top10watches_video`;
CREATE TABLE `top10watches_video`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `watches` int(11) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of top10watches_video
-- ----------------------------
INSERT INTO `top10watches_video` VALUES ('【春晚鬼畜】赵本山：我就是念诗之王！【改革春风吹满地】', 'https://www.bilibili.com/video/BV1bW411n7fY', 58016000);
INSERT INTO `top10watches_video` VALUES ('【电音单曲】我是papi酱', 'https://www.bilibili.com/video/BV1hs411Q7zf', 33438000);
INSERT INTO `top10watches_video` VALUES ('【派大星的独白】一个关于正常人的故事', 'https://www.bilibili.com/video/BV1qt411j7fV', 32684000);
INSERT INTO `top10watches_video` VALUES ('【五五开】穷开挂', 'https://www.bilibili.com/video/BV1FW411q7Js', 29638000);
INSERT INTO `top10watches_video` VALUES ('主播真会玩鬼畜篇01：我是全英雄联盟最骚的骚猪!', 'https://www.bilibili.com/video/BV1gs411B7y4', 27385000);
INSERT INTO `top10watches_video` VALUES ('【高能Rap】你从未看过的家有儿女', 'https://www.bilibili.com/video/BV1fs411t7EK', 19058000);
INSERT INTO `top10watches_video` VALUES ('【爱情公寓】一口气全念对', 'https://www.bilibili.com/video/BV1Mx411Q7u5', 17925000);
INSERT INTO `top10watches_video` VALUES ('【最强卖鞋哥】这双王八牌皮鞋，我买定了！', 'https://www.bilibili.com/video/BV1Zs411b7ZL', 15959000);
INSERT INTO `top10watches_video` VALUES ('奥利给妙妙屋', 'https://www.bilibili.com/video/BV1GJ411y7ui', 15822000);
INSERT INTO `top10watches_video` VALUES ('【经典老番】监狱风云1', 'https://www.bilibili.com/video/BV1Z441147oK', 15572000);

-- ----------------------------
-- Table structure for videodate_updatecount
-- ----------------------------
DROP TABLE IF EXISTS `videodate_updatecount`;
CREATE TABLE `videodate_updatecount`  (
  `today` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `monday` int(11) DEFAULT NULL,
  `tuesday` int(11) DEFAULT NULL,
  `wednesday` int(11) DEFAULT NULL,
  `thursday` int(11) DEFAULT NULL,
  `friday` int(11) DEFAULT NULL,
  `saturday` int(11) DEFAULT NULL,
  `sunday` int(11) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'This is count by video update' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of videodate_updatecount
-- ----------------------------
INSERT INTO `videodate_updatecount` VALUES (0, 0, 32686, 138458, 18190, 17471, 17569, 17850, 20797, 22753, 23827);

-- ----------------------------
-- Table structure for videolengthrange_updatecount
-- ----------------------------
DROP TABLE IF EXISTS `videolengthrange_updatecount`;
CREATE TABLE `videolengthrange_updatecount`  (
  `0to1` int(11) DEFAULT NULL,
  `1to2` int(11) DEFAULT NULL,
  `2to3` int(11) DEFAULT NULL,
  `3to4` int(11) DEFAULT NULL,
  `4to5` int(11) DEFAULT NULL,
  `5to` int(11) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'This is count by video length' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of videolengthrange_updatecount
-- ----------------------------
INSERT INTO `videolengthrange_updatecount` VALUES (21619, 52467, 28930, 17975, 7705, 9761);

-- ----------------------------
-- Table structure for word_count
-- ----------------------------
DROP TABLE IF EXISTS `word_count`;
CREATE TABLE `word_count`  (
  `word` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of word_count
-- ----------------------------
INSERT INTO `word_count` VALUES ('洗脑', 11583, 2019);
INSERT INTO `word_count` VALUES ('循环', 10414, 2019);
INSERT INTO `word_count` VALUES ('蜜汁', 8643, 2019);
INSERT INTO `word_count` VALUES ('带感', 7735, 2019);
INSERT INTO `word_count` VALUES ('洗脑', 6883, 2018);
INSERT INTO `word_count` VALUES ('音乐', 6277, 2019);
INSERT INTO `word_count` VALUES ('洗脑', 6089, 2020);
INSERT INTO `word_count` VALUES ('循环', 5780, 2020);
INSERT INTO `word_count` VALUES ('挑战', 5654, 2019);
INSERT INTO `word_count` VALUES ('蜜汁', 4125, 2020);
INSERT INTO `word_count` VALUES ('带感', 3654, 2020);
INSERT INTO `word_count` VALUES ('爆肝', 3624, 2019);
INSERT INTO `word_count` VALUES ('暑期', 3595, 2019);
INSERT INTO `word_count` VALUES ('枪声', 3362, 2019);
INSERT INTO `word_count` VALUES ('洗脑', 3230, 2017);
INSERT INTO `word_count` VALUES ('音乐', 3025, 2018);
INSERT INTO `word_count` VALUES ('视频', 2872, 2019);
INSERT INTO `word_count` VALUES ('音乐', 2809, 2020);
INSERT INTO `word_count` VALUES ('枪声', 2615, 2018);
INSERT INTO `word_count` VALUES ('哲学', 2593, 2018);
INSERT INTO `word_count` VALUES ('视频', 2590, 2020);
INSERT INTO `word_count` VALUES ('循环', 2562, 2018);
INSERT INTO `word_count` VALUES ('丧心病狂', 2449, 2018);
INSERT INTO `word_count` VALUES ('蔡', 2443, 2019);
INSERT INTO `word_count` VALUES ('徐坤', 2205, 2019);
INSERT INTO `word_count` VALUES ('怪物', 2187, 2018);
INSERT INTO `word_count` VALUES ('音乐', 2166, 2017);
INSERT INTO `word_count` VALUES ('带', 2145, 2019);
INSERT INTO `word_count` VALUES ('电音', 2072, 2019);
INSERT INTO `word_count` VALUES ('电子竞技', 2001, 2019);
INSERT INTO `word_count` VALUES ('哲学', 1973, 2017);
INSERT INTO `word_count` VALUES ('老八', 1897, 2020);
INSERT INTO `word_count` VALUES ('配音', 1858, 2019);
INSERT INTO `word_count` VALUES ('枪声', 1857, 2017);
INSERT INTO `word_count` VALUES ('剪辑', 1810, 2019);
INSERT INTO `word_count` VALUES ('有毒', 1788, 2018);
INSERT INTO `word_count` VALUES ('带感', 1737, 2018);
INSERT INTO `word_count` VALUES ('面筋', 1691, 2018);
INSERT INTO `word_count` VALUES ('蜜汁', 1671, 2018);
INSERT INTO `word_count` VALUES ('全明星', 1659, 2016);
INSERT INTO `word_count` VALUES ('卢本伟', 1653, 2020);
INSERT INTO `word_count` VALUES ('老师', 1580, 2020);
INSERT INTO `word_count` VALUES ('大赛', 1533, 2020);
INSERT INTO `word_count` VALUES ('全明星', 1527, 2018);
INSERT INTO `word_count` VALUES ('循环', 1497, 2017);
INSERT INTO `word_count` VALUES ('音乐', 1492, 2016);
INSERT INTO `word_count` VALUES ('枪声', 1419, 2016);
INSERT INTO `word_count` VALUES ('枪声', 1371, 2020);
INSERT INTO `word_count` VALUES ('怪物', 1278, 2017);
INSERT INTO `word_count` VALUES ('♂', 1277, 2017);
INSERT INTO `word_count` VALUES ('电子竞技', 1259, 2020);
INSERT INTO `word_count` VALUES ('竞技', 1256, 2020);
INSERT INTO `word_count` VALUES ('配音', 1217, 2020);
INSERT INTO `word_count` VALUES ('全明星', 1159, 2017);
INSERT INTO `word_count` VALUES ('奥利', 1156, 2020);
INSERT INTO `word_count` VALUES ('人力', 1132, 2020);
INSERT INTO `word_count` VALUES ('电子竞技', 1130, 2017);
INSERT INTO `word_count` VALUES ('郭', 1118, 2020);
INSERT INTO `word_count` VALUES ('乐器', 1061, 2017);
INSERT INTO `word_count` VALUES ('MAD', 1043, 2018);
INSERT INTO `word_count` VALUES ('电子竞技', 876, 2016);
INSERT INTO `word_count` VALUES ('MAD', 852, 2017);
INSERT INTO `word_count` VALUES ('RAP', 801, 2016);
INSERT INTO `word_count` VALUES ('洗脑', 801, 2016);
INSERT INTO `word_count` VALUES ('非凡', 782, 2017);
INSERT INTO `word_count` VALUES ('元首', 700, 2016);
INSERT INTO `word_count` VALUES ('带感', 647, 2016);
INSERT INTO `word_count` VALUES ('蜜汁', 645, 2016);
INSERT INTO `word_count` VALUES ('非凡', 636, 2016);
INSERT INTO `word_count` VALUES ('守望', 633, 2016);
INSERT INTO `word_count` VALUES ('循环', 588, 2016);
INSERT INTO `word_count` VALUES ('王司徒', 580, 2016);
INSERT INTO `word_count` VALUES ('先锋', 576, 2016);

SET FOREIGN_KEY_CHECKS = 1;
