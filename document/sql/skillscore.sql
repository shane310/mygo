/*
 Navicat Premium Data Transfer

 Source Server         : mn
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : rm-bp16nl7q15389w7q1io.mysql.rds.aliyuncs.com:3306
 Source Schema         : skillscore

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 22/05/2021 21:45:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for contestant
-- ----------------------------
DROP TABLE IF EXISTS `contestant`;
CREATE TABLE `contestant`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `gid` int(10) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `region` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `group` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_show_result` tinyint(1) NULL DEFAULT 1,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 216 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contestant
-- ----------------------------
INSERT INTO `contestant` VALUES (1, 10150901, '刘仁芹', 'CE', 'A-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (2, 10296611, '杨双盈', 'CE', 'A-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (3, 10278955, '厉文宇', 'CE', 'A-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (4, 10297445, '姜佳佳', 'CE', 'A-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (5, 10140954, '梁玉红', 'CE', 'A-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (6, 10305530, '曹志远', 'E1', 'A-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (7, 10162136, '陈丽芬', 'E1', 'A-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (8, 10162140, '陈晓波', 'E1', 'A-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (9, 10291219, '丁惠', 'E1', 'A-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (10, 10317524, '黄文皓', 'E1', 'A-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (11, 10301743, '黄志洋', 'E1', 'A-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (12, 10331189, '李小雨', 'E1', 'A-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (13, 10290909, '刘嘉俪', 'E1', 'A-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (14, 10176975, '刘瑞瑞', 'E1', 'A-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (15, 10328250, '王莹', 'E1', 'A-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (16, 10177110, '魏嵩', 'E1', 'A-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (17, 10324872, '赵佳', 'E1', 'A-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (18, 10173938, '赵荣欣', 'E1', 'A-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (19, 10328269, '左清', 'E1', 'A-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (20, 10162384, '陈英祥', 'E2', 'A-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (21, 10322646, '蓝春花', 'E2', 'A-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (22, 10162548, '刘旭晗', 'E2', 'A-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (23, 10175792, '罗斌', 'E2', 'A-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (24, 10174953, '占晓丽', 'E2', 'A-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (25, 10131655, '敖志辉', 'E2', 'B-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (26, 10177003, '程浩', 'E2', 'B-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (27, 10173111, '程旭强', 'E2', 'B-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (28, 10162443, '何流波', 'E2', 'B-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (29, 10162449, '洪懂', 'E2', 'B-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (30, 10324021, '黄斌斌', 'E2', 'B-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (31, 10176766, '林晶', 'E2', 'B-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (32, 10325070, '倪梦琳', 'E2', 'B-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (33, 10162587, '任锡丹', 'E2', 'B-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (34, 10176771, '孙莉莉', 'E2', 'B-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (35, 10162675, '王丽娟', 'E2', 'B-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (36, 10316710, '王耀鹏', 'E2', 'B-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (37, 10175807, '翁雯', 'E2', 'B-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (38, 10326266, '吴书浩', 'E2', 'B-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (39, 10162689, '吴炎华', 'E2', 'B-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (40, 10176740, '张婷', 'E2', 'B-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (41, 10175388, '郝娇娇', 'E3', 'B-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (42, 10096191, '李蕊', 'E3', 'B-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (43, 10324607, '李维维', 'E3', 'B-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (44, 10132655, '汤海波', 'E3', 'B-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (45, 10321721, '王景萍', 'E3', 'B-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (46, 10326866, '卜晓松', 'E3', 'B-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (47, 10176754, '丁剑波', 'E3', 'B-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (48, 10319092, '范昀斐', 'E3', 'B-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (49, 10140946, '刘惠', 'E3', 'C-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (50, 10255616, '刘文琨', 'E3', 'C-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (51, 10320331, '马寿亚', 'E3', 'C-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (52, 10320213, '秦呈祥', 'E3', 'C-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (53, 10162640, '王栋月', 'E3', 'C-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (54, 10175389, '王萌', 'E3', 'C-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (55, 10174021, '张婵娟', 'E3', 'C-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (56, 10119906, '张超', 'E3', 'C-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (57, 10302094, '赵尹涵', 'E3', 'C-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (58, 10321659, '朱雨杭', 'E3', 'C-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (59, 10253331, '费国庆', 'E3', 'C-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (60, 10324605, '火星', 'E3', 'C-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (61, 10276854, '黎加强', 'W', 'C-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (62, 10109261, '罗家渠', 'W', 'C-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (63, 10141080, '沈彩萍', 'W', 'C-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (64, 10268944, '熊艳', 'W', 'C-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (65, 10259187, '易巧', 'W', 'C-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (66, 10321919, '张洪羽', 'W', 'C-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (67, 10256901, '张元波', 'W', 'C-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (68, 10162786, '张媛', 'W', 'C-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (69, 10105338, '朱琳', 'W', 'C-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (70, 10162742, '喻礼尊', 'W', 'C-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (71, 10162744, '喻琼', 'W', 'C-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (72, 10269361, '张国敏', 'CE', 'C-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (73, 10288980, '蔡微', 'S2', 'D-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (74, 10324609, '蔡义岱', 'S2', 'D-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (75, 10162372, '陈超', 'S2', 'D-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (76, 10162382, '陈燕', 'S2', 'D-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (77, 10318770, '崔倩', 'S2', 'D-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (78, 10297791, '葛海平', 'S2', 'D-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (79, 10162439, '韩金明', 'S2', 'D-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (80, 10293630, '黄泰榕', 'S2', 'D-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (81, 10176673, '黎铮', 'S2', 'D-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (82, 10162505, '李少平', 'S2', 'D-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (83, 10162529, '林晓丽', 'S2', 'D-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (84, 10325760, '潘圣彬', 'S2', 'D-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (85, 10331769, '邱若男', 'S2', 'D-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (86, 10329253, '唐秀丽', 'S2', 'D-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (87, 10162685, '吴韩', 'S2', 'D-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (88, 10324606, '向婧', 'S2', 'D-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (89, 10174248, '熊蕾', 'S2', 'D-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (90, 10320172, '徐美玉', 'S2', 'D-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (91, 10176180, '薛仁杏', 'S2', 'D-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (92, 10176662, '张飞翔', 'S2', 'D-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (93, 10328253, '张新鑫', 'S2', 'D-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (94, 10162512, '黎燕', 'S2', 'D-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (95, 10322644, '刘志华', 'S2', 'D-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (96, 10325300, '李超超', 'S2', 'D-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (97, 10298248, '黄莉', 'CE', 'E-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (98, 10275409, '施入源', 'CE', 'E-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (99, 10176858, '侯娟', 'S1', 'E-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (100, 10162499, '李璐', 'S1', 'E-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (101, 10162562, '马秀丽', 'S1', 'E-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (102, 10175748, '聂颖', 'S1', 'E-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (103, 10173825, '宋思芹', 'S1', 'E-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (104, 10304885, '谢梦雅', 'S1', 'E-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (105, 10162774, '张利', 'S1', 'E-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (106, 10162807, '钟娟', 'S1', 'E-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (107, 10162400, '窦岳', 'W', 'E-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (108, 10162412, '冯旭', 'W', 'E-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (109, 10300984, '曾志锋', 'S1', 'E-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (110, 10174989, '陈宁', 'S1', 'E-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (111, 10274267, '陈长林', 'S1', 'E-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (112, 10321347, '邓全念', 'S1', 'E-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (113, 10302863, '高检梅', 'S1', 'E-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (114, 10318603, '廖鹏', 'S1', 'E-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (115, 10174536, '王蔓妮', 'S1', 'E-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (116, 10328252, '余燕', 'S1', 'E-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (117, 10174087, '张锦云', 'S1', 'E-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (118, 10174777, '杜笠', 'W', 'E-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (119, 10162460, '胡思敏', 'W', 'E-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (120, 10319071, '李骞', 'W', 'E-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (121, 10301274, '安冰睿', 'N1', 'F-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (122, 10161042, '范一薇', 'N1', 'F-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (123, 10092680, '李育春', 'N1', 'F-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (124, 10299299, '梁红丽', 'N1', 'F-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (125, 10174821, '吕赛', 'N1', 'F-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (126, 10176856, '马婧', 'N1', 'F-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (127, 10259189, '孟玉倩', 'N1', 'F-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (128, 10176112, '孙靓', 'N1', 'F-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (129, 10161105, '孙少凡', 'N1', 'F-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (130, 10161115, '王诗萍', 'N1', 'F-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (131, 10161119, '王一平', 'N1', 'F-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (132, 10161118, '王营', 'N1', 'F-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (133, 10117017, '翁秀玲', 'N1', 'F-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (134, 10161149, '朱建芳', 'N1', 'F-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (135, 10291988, '苏玲', 'N1', 'F-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (136, 10162656, '王鹏', 'N1', 'F-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (137, 10174260, '王瑞林', 'N1', 'F-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (138, 10176179, '吕艳丰', 'N2', 'F-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (139, 10177125, '张晓敏', 'N2', 'F-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (140, 10301223, '曹悦', 'N2', 'F-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (141, 10269702, '邓春光', 'N2', 'F-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (142, 10175791, '郭建莅', 'N2', 'F-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (143, 10162491, '李东瑞', 'N2', 'F-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (144, 10279491, '郑芹花', 'CE', 'F-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (145, 10254158, '郑萌欣', 'N1', 'G-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (146, 10162473, '贾庆红', 'N1', 'G-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (147, 10162582, '乔明岩', 'N1', 'G-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (148, 10176974, '王梦倩', 'N1', 'G-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (149, 10162696, '肖鹏飞', 'N1', 'G-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (150, 10162726, '姚卫杰', 'N1', 'G-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (151, 10162788, '张月芬', 'N1', 'G-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (152, 10175165, '汪丽娜', 'N2', 'G-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (153, 10176727, '王楠', 'N2', 'G-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (154, 10173989, '吴晓明', 'N2', 'G-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (155, 10177100, '许洋', 'N2', 'G-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (156, 10162763, '张迪', 'N2', 'G-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (157, 10294422, '姜会玲', 'CE', 'G-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (158, 10176513, '李威', 'N2', 'G-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (159, 10173466, '李鑫', 'N2', 'G-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (160, 10162525, '梁媛', 'N2', 'G-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (161, 10162770, '张静', 'N2', 'G-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (162, 10162804, '郑岩', 'N2', 'G-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (163, 10175099, '侯凯文', 'N2', 'G-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (164, 10161066, '李春鑫', 'N2', 'G-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (165, 10297450, '李世晗', 'N2', 'G-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (166, 10294033, '任喜宁', 'N2', 'G-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (167, 10162554, '陆兴鸿', 'N2', 'G-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (168, 10162790, '张志英', 'N2', 'G-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (169, 10140945, '冀春霞', 'CE', 'H-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (170, 10275399, '史小倩', 'CE', 'H-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (171, 10264289, '徐丽', 'CE', 'H-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (172, 10161037, '程木广', 'N4', 'H-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (173, 10162421, '郜海涛', 'N4', 'H-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (174, 10320078, '郭小敏', 'N4', 'H-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (175, 10321349, '李静', 'N4', 'H-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (176, 10176859, '刘超', 'N4', 'H-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (177, 10162537, '刘洪霞', 'N4', 'H-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (178, 10162541, '刘丽梅', 'N4', 'H-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (179, 10162649, '王俊虎', 'N3', 'H-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (180, 10162672, '王玉龙', 'N4', 'H-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (181, 10290994, '杨昭', 'N4', 'H-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (182, 10174698, '翟冬梅', 'N4', 'H-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (183, 10162757, '翟月', 'N4', 'H-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (184, 10322548, '周广同', 'N4', 'H-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (185, 10322360, '朱文会', 'N4', 'H-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (186, 10162556, '罗丽', 'N4', 'H-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (187, 10162459, '胡淑群', 'S1', 'H-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (188, 10320330, '李瑶', 'S1', 'H-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (189, 10325761, '刘扬飞', 'S1', 'H-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (190, 10329249, '祝鹏', 'S1', 'H-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (191, 10176510, '陈国泉', 'S1', 'H-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (192, 10162492, '李红军', 'N1', 'I-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (193, 10162573, '宁海燕', 'N1', 'I-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (194, 10162626, '田春燕', 'N1', 'I-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (195, 10175212, '陈攀', 'N3', 'I-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (196, 10304879, '郭靖靖', 'N3', 'I-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (197, 10173827, '黄婷', 'N3', 'I-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (198, 10317493, '李成祥', 'N3', 'I-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (199, 10303483, '刘丽君', 'N3', 'I-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (200, 10294142, '杨祯', 'N3', 'I-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (201, 10298165, '袁天根', 'N3', 'I-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (202, 10162779, '张涛', 'N3', 'I-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (203, 10332106, '陈倚郯', 'S2', 'I-1', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (204, 10089462, '李为', 'CE', 'I-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (205, 10326267, '米学宇', 'N3', 'I-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (206, 10162605, '宋忠华', 'N3', 'I-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (207, 10177154, '谭森', 'N3', 'I-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (208, 10162632, '屠培', 'N3', 'I-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (209, 10325293, '郭雄波', 'N3', 'I-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (210, 10161053, '贺小妮', 'N3', 'I-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (211, 10162517, '李云', 'N3', 'I-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (212, 10300982, '孙涛', 'N3', 'I-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (213, 10162721, '杨扬', 'N3', 'I-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (214, 10321348, '张浩', 'N3', 'I-2', NULL, 1, NULL, NULL);
INSERT INTO `contestant` VALUES (215, 10162435, '郭艳新', 'N3', 'I-2', NULL, 1, NULL, NULL);

-- ----------------------------
-- Table structure for match
-- ----------------------------
DROP TABLE IF EXISTS `match`;
CREATE TABLE `match`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `kvurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '1:场内2:场外',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of match
-- ----------------------------
INSERT INTO `match` VALUES (1, 'https://qncdn.crnonline.cn/crn/210520/210524kv.jpg', '比赛一', 'sdfasdfa', 1, NULL, NULL);
INSERT INTO `match` VALUES (2, 'https://qncdn.crnonline.cn/crn/210520/2105242kv.jpg', '誓师大会', NULL, 1, NULL, NULL);

-- ----------------------------
-- Table structure for rule
-- ----------------------------
DROP TABLE IF EXISTS `rule`;
CREATE TABLE `rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `score` int(10) NULL DEFAULT NULL,
  `match_id` int(10) NULL DEFAULT NULL,
  `subject_id` int(10) NULL DEFAULT NULL COMMENT 'subject id',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rule
-- ----------------------------
INSERT INTO `rule` VALUES (1, '置管前评估', 7, 1, 1, NULL, NULL);
INSERT INTO `rule` VALUES (2, '操作前准备', 3, 1, 1, NULL, NULL);
INSERT INTO `rule` VALUES (3, '物品准备', 1, 1, 1, NULL, NULL);
INSERT INTO `rule` VALUES (4, '操作步骤', 89, 1, 1, NULL, NULL);
INSERT INTO `rule` VALUES (5, '置管前评估', 7, 1, 2, NULL, NULL);
INSERT INTO `rule` VALUES (6, '操作前准备', 3, 1, 2, NULL, NULL);
INSERT INTO `rule` VALUES (7, '物品准备', 1, 1, 2, NULL, NULL);
INSERT INTO `rule` VALUES (8, '操作步骤', 89, 1, 2, NULL, NULL);
INSERT INTO `rule` VALUES (9, '时间把控能力', 25, 2, 3, NULL, NULL);
INSERT INTO `rule` VALUES (10, '契合主题', 25, 2, 3, NULL, NULL);
INSERT INTO `rule` VALUES (11, '形式创新能力', 25, 2, 3, NULL, NULL);
INSERT INTO `rule` VALUES (12, '现场感染力', 25, 2, 3, NULL, NULL);

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `contestant_id` int(10) NOT NULL,
  `match_id` int(10) NULL DEFAULT NULL,
  `subject_id` int(10) NULL DEFAULT NULL,
  `user_id` int(10) NULL DEFAULT NULL,
  `vurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `score` float(10, 1) NULL DEFAULT NULL,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 511 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (1, 1, 1, 2, 1, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (2, 2, 1, 2, 1, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (3, 3, 1, 2, 1, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (4, 4, 1, 2, 1, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (5, 5, 1, 2, 1, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (6, 6, 1, 2, 1, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (7, 7, 1, 2, 1, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (8, 8, 1, 2, 1, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (9, 9, 1, 2, 1, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (10, 10, 1, 2, 1, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (11, 11, 1, 2, 1, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (12, 12, 1, 2, 1, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (13, 13, 1, 2, 2, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (14, 14, 1, 2, 2, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (15, 15, 1, 2, 2, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (16, 16, 1, 2, 2, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (17, 17, 1, 2, 2, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (18, 18, 1, 2, 2, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (19, 19, 1, 2, 2, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (20, 20, 1, 2, 2, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (21, 21, 1, 2, 2, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (22, 22, 1, 2, 2, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (23, 23, 1, 2, 2, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (24, 24, 1, 2, 2, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (25, 25, 1, 2, 3, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (26, 26, 1, 2, 3, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (27, 27, 1, 2, 3, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (28, 28, 1, 2, 3, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (29, 29, 1, 2, 3, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (30, 30, 1, 2, 3, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (31, 31, 1, 2, 3, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (32, 32, 1, 2, 3, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (33, 33, 1, 2, 3, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (34, 34, 1, 2, 3, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (35, 35, 1, 2, 3, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (36, 36, 1, 2, 3, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (37, 37, 1, 2, 4, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (38, 38, 1, 2, 4, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (39, 39, 1, 2, 4, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (40, 40, 1, 2, 4, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (41, 41, 1, 2, 4, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (42, 42, 1, 2, 4, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (43, 43, 1, 2, 4, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (44, 44, 1, 2, 4, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (45, 45, 1, 2, 4, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (46, 46, 1, 2, 4, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (47, 47, 1, 2, 4, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (48, 48, 1, 2, 4, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (49, 49, 1, 2, 5, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (50, 50, 1, 2, 5, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (51, 51, 1, 2, 5, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (52, 52, 1, 2, 5, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (53, 53, 1, 2, 5, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (54, 54, 1, 2, 5, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (55, 55, 1, 2, 5, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (56, 56, 1, 2, 5, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (57, 57, 1, 2, 5, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (58, 58, 1, 2, 5, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (59, 59, 1, 2, 5, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (60, 60, 1, 2, 5, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (61, 61, 1, 2, 6, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (62, 62, 1, 2, 6, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (63, 63, 1, 2, 6, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (64, 64, 1, 2, 6, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (65, 65, 1, 2, 6, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (66, 66, 1, 2, 6, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (67, 67, 1, 2, 6, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (68, 68, 1, 2, 6, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (69, 69, 1, 2, 6, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (70, 70, 1, 2, 6, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (71, 71, 1, 2, 6, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (72, 72, 1, 2, 6, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (73, 73, 1, 2, 7, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (74, 74, 1, 2, 7, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (75, 75, 1, 2, 7, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (76, 76, 1, 2, 7, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (77, 77, 1, 2, 7, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (78, 78, 1, 2, 7, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (79, 79, 1, 2, 7, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (80, 80, 1, 2, 7, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (81, 81, 1, 2, 7, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (82, 82, 1, 2, 7, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (83, 83, 1, 2, 7, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (84, 84, 1, 2, 7, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (85, 144, 1, 2, 7, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (86, 97, 1, 2, 9, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (87, 98, 1, 2, 9, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (88, 99, 1, 2, 9, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (89, 100, 1, 2, 9, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (90, 101, 1, 2, 9, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (91, 102, 1, 2, 9, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (92, 103, 1, 2, 9, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (93, 104, 1, 2, 9, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (94, 105, 1, 2, 9, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (95, 106, 1, 2, 9, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (96, 107, 1, 2, 9, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (97, 108, 1, 2, 9, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (98, 109, 1, 2, 10, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (99, 110, 1, 2, 10, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (100, 111, 1, 2, 10, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (101, 112, 1, 2, 10, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (102, 113, 1, 2, 10, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (103, 114, 1, 2, 10, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (104, 115, 1, 2, 10, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (105, 116, 1, 2, 10, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (106, 117, 1, 2, 10, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (107, 118, 1, 2, 10, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (108, 119, 1, 2, 10, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (109, 120, 1, 2, 10, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (110, 121, 1, 2, 11, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (111, 122, 1, 2, 11, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (112, 123, 1, 2, 11, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (113, 124, 1, 2, 11, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (114, 125, 1, 2, 11, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (115, 126, 1, 2, 11, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (116, 127, 1, 2, 11, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (117, 128, 1, 2, 11, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (118, 129, 1, 2, 11, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (119, 130, 1, 2, 11, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (120, 131, 1, 2, 11, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (121, 132, 1, 2, 11, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (122, 133, 1, 2, 12, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (123, 134, 1, 2, 12, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (124, 135, 1, 2, 12, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (125, 136, 1, 2, 12, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (126, 137, 1, 2, 12, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (127, 138, 1, 2, 12, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (128, 139, 1, 2, 12, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (129, 140, 1, 2, 12, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (130, 141, 1, 2, 12, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (131, 142, 1, 2, 12, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (132, 143, 1, 2, 12, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (133, 157, 1, 2, 13, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (134, 158, 1, 2, 13, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (135, 159, 1, 2, 13, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (136, 160, 1, 2, 13, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (137, 161, 1, 2, 13, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (138, 162, 1, 2, 13, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (139, 163, 1, 2, 13, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (140, 164, 1, 2, 13, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (141, 165, 1, 2, 13, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (142, 166, 1, 2, 13, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (143, 167, 1, 2, 13, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (144, 168, 1, 2, 13, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (145, 145, 1, 2, 14, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (146, 146, 1, 2, 14, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (147, 147, 1, 2, 14, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (148, 148, 1, 2, 14, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (149, 149, 1, 2, 14, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (150, 150, 1, 2, 14, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (151, 151, 1, 2, 14, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (152, 152, 1, 2, 14, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (153, 153, 1, 2, 14, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (154, 154, 1, 2, 14, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (155, 155, 1, 2, 14, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (156, 156, 1, 2, 14, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (157, 169, 1, 2, 15, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (158, 170, 1, 2, 15, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (159, 171, 1, 2, 15, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (160, 172, 1, 2, 15, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (161, 173, 1, 2, 15, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (162, 174, 1, 2, 15, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (163, 175, 1, 2, 15, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (164, 176, 1, 2, 15, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (165, 177, 1, 2, 15, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (166, 178, 1, 2, 15, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (167, 179, 1, 2, 15, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (168, 180, 1, 2, 16, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (169, 181, 1, 2, 16, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (170, 182, 1, 2, 16, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (171, 183, 1, 2, 16, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (172, 184, 1, 2, 16, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (173, 185, 1, 2, 16, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (174, 186, 1, 2, 16, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (175, 187, 1, 2, 16, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (176, 188, 1, 2, 16, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (177, 189, 1, 2, 16, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (178, 190, 1, 2, 16, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (179, 191, 1, 2, 16, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (180, 192, 1, 2, 17, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (181, 193, 1, 2, 17, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (182, 194, 1, 2, 17, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (183, 195, 1, 2, 17, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (184, 196, 1, 2, 17, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (185, 197, 1, 2, 17, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (186, 198, 1, 2, 17, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (187, 199, 1, 2, 17, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (188, 200, 1, 2, 17, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (189, 201, 1, 2, 17, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (190, 202, 1, 2, 17, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (191, 203, 1, 2, 17, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (192, 204, 1, 2, 18, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (193, 205, 1, 2, 18, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (194, 206, 1, 2, 18, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (195, 207, 1, 2, 18, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (196, 208, 1, 2, 18, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (197, 209, 1, 2, 18, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (198, 210, 1, 2, 18, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (199, 211, 1, 2, 18, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (200, 212, 1, 2, 18, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (201, 213, 1, 2, 18, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (202, 214, 1, 2, 18, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (203, 215, 1, 2, 18, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (204, 85, 1, 2, 29, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (205, 86, 1, 2, 29, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (206, 87, 1, 2, 29, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (207, 88, 1, 2, 29, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (208, 89, 1, 2, 29, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (209, 90, 1, 2, 29, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (210, 91, 1, 2, 29, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (211, 92, 1, 2, 29, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (212, 93, 1, 2, 29, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (213, 94, 1, 2, 29, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (214, 95, 1, 2, 29, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (215, 96, 1, 2, 29, '', '', 0.0, '', '2021-05-22 21:43:29', '2021-05-22 21:43:29');
INSERT INTO `score` VALUES (256, 1, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (257, 2, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (258, 3, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (259, 4, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (260, 5, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (261, 6, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (262, 7, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (263, 8, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (264, 9, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (265, 10, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (266, 11, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (267, 12, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (268, 13, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (269, 14, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (270, 15, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (271, 16, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (272, 17, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (273, 18, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (274, 19, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (275, 20, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (276, 21, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (277, 22, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (278, 23, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (279, 24, 1, 1, 19, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (280, 25, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (281, 26, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (282, 27, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (283, 28, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (284, 29, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (285, 30, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (286, 31, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (287, 32, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (288, 33, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (289, 34, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (290, 35, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (291, 36, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (292, 37, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (293, 38, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (294, 39, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (295, 40, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (296, 41, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (297, 42, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (298, 43, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (299, 44, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (300, 45, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (301, 46, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (302, 47, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (303, 48, 1, 1, 20, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (304, 49, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (305, 50, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (306, 51, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (307, 52, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (308, 53, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (309, 54, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (310, 55, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (311, 56, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (312, 57, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (313, 58, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (314, 59, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (315, 60, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (316, 61, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (317, 62, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (318, 63, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (319, 64, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (320, 65, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (321, 66, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (322, 67, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (323, 68, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (324, 69, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (325, 70, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (326, 71, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (327, 72, 1, 1, 21, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (328, 73, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (329, 74, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (330, 75, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (331, 76, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (332, 77, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (333, 78, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (334, 79, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (335, 80, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (336, 81, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (337, 82, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (338, 83, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (339, 84, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (340, 85, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (341, 86, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (342, 87, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (343, 88, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (344, 89, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (345, 90, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (346, 91, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (347, 92, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (348, 93, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (349, 94, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (350, 95, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (351, 96, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (352, 144, 1, 1, 22, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (353, 97, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (354, 98, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (355, 99, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (356, 100, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (357, 101, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (358, 102, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (359, 103, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (360, 104, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (361, 105, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (362, 106, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (363, 107, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (364, 108, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (365, 109, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (366, 110, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (367, 111, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (368, 112, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (369, 113, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (370, 114, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (371, 115, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (372, 116, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (373, 117, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (374, 118, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (375, 119, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (376, 120, 1, 1, 23, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (377, 121, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (378, 122, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (379, 123, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (380, 124, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (381, 125, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (382, 126, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (383, 127, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (384, 128, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (385, 129, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (386, 130, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (387, 131, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (388, 132, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (389, 133, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (390, 134, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (391, 135, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (392, 136, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (393, 137, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (394, 138, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (395, 139, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (396, 140, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (397, 141, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (398, 142, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (399, 143, 1, 1, 24, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (400, 145, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (401, 146, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (402, 147, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (403, 148, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (404, 149, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (405, 150, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (406, 151, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (407, 152, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (408, 153, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (409, 154, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (410, 155, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (411, 156, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (412, 157, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (413, 158, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (414, 159, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (415, 160, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (416, 161, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (417, 162, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (418, 163, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (419, 164, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (420, 165, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (421, 166, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (422, 167, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (423, 168, 1, 1, 25, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (424, 169, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (425, 170, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (426, 171, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (427, 172, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (428, 173, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (429, 174, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (430, 175, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (431, 176, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (432, 177, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (433, 178, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (434, 179, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (435, 180, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (436, 181, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (437, 182, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (438, 183, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (439, 184, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (440, 185, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (441, 186, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (442, 187, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (443, 188, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (444, 189, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (445, 190, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (446, 191, 1, 1, 26, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (447, 192, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (448, 193, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (449, 194, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (450, 195, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (451, 196, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (452, 197, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (453, 198, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (454, 199, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (455, 200, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (456, 201, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (457, 202, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (458, 203, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (459, 204, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (460, 205, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (461, 206, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (462, 207, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (463, 208, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (464, 209, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (465, 210, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (466, 211, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (467, 212, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (468, 213, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (469, 214, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');
INSERT INTO `score` VALUES (470, 215, 1, 1, 27, '', '', 0.0, '', '2021-05-22 21:43:44', '2021-05-22 21:43:44');

-- ----------------------------
-- Table structure for score_log
-- ----------------------------
DROP TABLE IF EXISTS `score_log`;
CREATE TABLE `score_log`  (
  `score_id` int(10) NOT NULL,
  `contestant_id` int(10) NOT NULL,
  `match_id` int(10) NULL DEFAULT NULL,
  `subject_id` int(10) NULL DEFAULT NULL,
  `user_id` int(10) NULL DEFAULT NULL,
  `vurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `score` float(10, 1) NULL DEFAULT NULL,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `match_id` int(10) NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES (1, '3CG', 1, 'https://qncdn.crnonline.cn/crn/210520/3cg.jpg', NULL, NULL);
INSERT INTO `subject` VALUES (2, 'ECG', 1, 'https://qncdn.crnonline.cn/crn/210520/ecg.jpg', NULL, NULL);
INSERT INTO `subject` VALUES (3, '誓师大会', 2, 'https://qncdn.crnonline.cn/crn/210520/ssdh.jpg', NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `gid` int(10) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `type` tinyint(1) NULL DEFAULT 1 COMMENT '1:场内2:场外',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `starttime` datetime(0) NULL DEFAULT NULL,
  `endtime` datetime(0) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 10128732, '魏云', '128732', NULL, 1, '北京', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (2, 10161086, '刘美月', '161086', NULL, 1, '北京', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (3, 10070618, '王婷', '070618', NULL, 1, '辽宁省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (4, 10162756, '曾志', '162756', NULL, 1, '辽宁省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (5, 10070588, '刘志娟', '070588', NULL, 1, '河南省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (6, 10275525, '谭文娟', '275525', NULL, 1, '湖北省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (7, 10162479, '蒋智云', '162479', NULL, 1, '四川省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (8, 10270977, '徐洁', '270977', NULL, 1, '四川省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (9, 10104600, '许洁敏', '104600', NULL, 1, '上海', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (10, 10275830, '安明月', '275830', NULL, 1, '北京', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (11, 10104076, '张坚', '104076', NULL, 1, '江苏省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (12, 10162715, '杨丽', '162715', NULL, 1, '江苏省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (13, 10257851, '郭雅凡', '257851', NULL, 1, '广东省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (14, 10302866, '封懿倩', '302866', NULL, 1, '广东省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (15, 10162468, '黄微', '162468', NULL, 1, '广东省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (16, 10176470, '王蕊', '176470', NULL, 1, '陕西省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (17, 10137868, '王雅青', '137868', NULL, 1, '福建省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (18, 10105112, '李元华', '105112', NULL, 1, '山东省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (19, 10274758, '高媛', '274758', NULL, 1, '北京', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (20, 10162645, '汪嘉庆', '162645', NULL, 1, '辽宁省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (21, 10278952, '张艳', '278952', NULL, 1, '辽宁省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (22, 10301464, '陈欢', '301464', NULL, 1, '四川省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (23, 10280176, '蒋瑛鹂', '280176', NULL, 1, '浙江省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (24, 10141755, '李莉', '141755', NULL, 1, '江苏省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (25, 10141493, '刘嘉明', '141493', NULL, 1, '广东省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (26, 10141485, '赵昭', '141485', NULL, 1, '天津', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (27, 10114142, '王聪聪', '114142', NULL, 1, '山东省', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (28, 0, '管理员', '000000', NULL, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (29, 10253315, '赵欢欢', '253315', NULL, 1, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
