/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : volunternetwork

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2018-04-19 17:22:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_acti`
-- ----------------------------
DROP TABLE IF EXISTS `t_acti`;
CREATE TABLE `t_acti` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text,
  `fbtime` datetime DEFAULT NULL,
  `fbzz` varchar(255) DEFAULT NULL,
  `fwyq` varchar(255) DEFAULT NULL,
  `hdjj` varchar(255) DEFAULT NULL,
  `hdlx` varchar(255) DEFAULT NULL,
  `hdsj` datetime DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `lxfs` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `xxdz` varchar(255) DEFAULT NULL,
  `attention` int(11) DEFAULT NULL,
  `zan` int(11) DEFAULT NULL,
  `zmrs` int(11) DEFAULT NULL,
  `fbman` varchar(255) DEFAULT NULL,
  `beginTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_acti
-- ----------------------------
INSERT INTO `t_acti` VALUES ('97', '333', '2018-03-25 22:48:10', '000', null, null, '其他', null, null, null, '0', '其他', null, null, null, null, null, null, null);
INSERT INTO `t_acti` VALUES ('98', '333', '2018-03-25 22:48:10', '000', null, null, '便民服务', null, null, null, '1', '便民服务', null, null, null, null, null, null, null);
INSERT INTO `t_acti` VALUES ('99', '333', '2018-03-25 22:48:10', '000', null, null, '文化体育', null, null, null, '0', '文化体育', null, null, null, null, null, null, null);
INSERT INTO `t_acti` VALUES ('218', '', '2018-03-29 12:27:13', '321', '3213', '3213', '青少年服务', '2018-03-29 00:00:00', '/upload/a229a156-a300-4f71-894f-2f1b2847d0c2.jpg', '321', '1', '青少年服务', '3213', null, null, '3213', null, null, null);
INSERT INTO `t_acti` VALUES ('223', '545', '2018-03-29 13:24:30', '545', '545', '54', '敬老助残', '2018-03-29 00:00:00', '/upload/36882f04-356f-4960-a8e8-535dd807d892.jpg', '545', '1', '敬老助残', '54', null, null, '545', null, null, null);
INSERT INTO `t_acti` VALUES ('224', '666', '2018-03-29 13:26:35', '66', '666', '66', '扶贫帮困', '2018-03-29 00:00:00', '/upload/76046d6d-c349-4e53-ac90-ddc9d5ecd821.jpg', '66', '1', '扶贫帮困', '66', null, null, '66', null, null, null);
INSERT INTO `t_acti` VALUES ('225', '888', '2018-03-29 13:31:06', '8', '8', '8', '文明礼仪', '2018-03-29 00:00:00', '/upload/83f11546-8a2e-409c-9e94-78b2f6b5f419.jpg', '8', '1', '文明礼仪', '8', null, null, '8', null, null, null);
INSERT INTO `t_acti` VALUES ('226', '11', '2018-03-29 13:37:18', '11', '11', '11', '平安守护', '2018-03-29 00:00:00', '/upload/f422fdb0-1f15-4b02-93ff-6fbbf5776e56.jpg', '11', '1', '平安守护', '11', null, null, '11', null, null, null);
INSERT INTO `t_acti` VALUES ('228', '00', '2018-03-29 22:27:48', '0', '0', '0', '环境保护', '2018-03-29 00:00:00', '/upload/a5359ce0-b05e-4dcb-b27a-a6c445154ba9.jpg', '0', '1', '环境保护', '0', null, null, '0', null, null, null);
INSERT INTO `t_acti` VALUES ('229', '312', '2018-04-07 23:09:28', '312', '321', '321', '青少年服务', null, '/upload/5bf5767f-2444-437b-8ecd-531d25825d73.jpg', '321', '1', '3321', '321', null, null, '321', null, '2018-04-11 00:00:00', '2018-04-12 00:00:00');
INSERT INTO `t_acti` VALUES ('230', '<span style=\"color:#333333;font-family:&quot;Microsoft Yahei&quot;;background-color:#FFFFFF;\">感恩遂溪县善行社会工作服务中心的每一位爱心满满的家人一路的支持与善助，我们定于2018年4月9日(即星期一)早上8点半钟，将再次前往遂溪县遂城镇敬老院，老人家的房间与院子各处的卫生需要我们再次去关注，现向爱心家人们发出爱心召唤令，招募15名志愿者与遂城镇的社会工作者一起到敬老院搞卫生。 温馨提示: 1.在此接龙报名后，必须在i志愿平台报名，才能有服务时长，如无需，即可忽视！ 2、活动期间汽车油费、过路费、餐费开支实行AA制。 3、免责声明:所有参加人员均属自愿参加活动，参加者必须对自己的安全负责及对活动中的一切风险及导致的各种后果均自我负责和承担，发起者和同行者有义务援助，但在任何情况下均不承担任何法律和经济责任，特此声明！凡报名参加活动者均视为受本活动的免责。</span>', '2018-04-08 13:34:29', '计算机志愿服务站', '1.遂溪县善行社会工作服务中心志愿者成员。 2.走访活动，必须穿本社团工作服与佩戴工作证。 3.遵守活动秩序与安排。', '暖心活动，主要是帮助老人家收拾房间与搞干净食堂卫生！', '青少年服务', null, '/upload/8f80b023-00c8-4b13-a6d1-434820cc5c7a.jpg', '676656', '1', '清洁女生宿舍风扇', '莞工松山湖校区', null, null, '12', null, '2018-04-08 00:00:00', '2018-04-09 00:00:00');
INSERT INTO `t_acti` VALUES ('231', '<span style=\"color:#333333;font-family:&quot;Microsoft Yahei&quot;;background-color:#FFFFFF;\">感恩遂溪县善行社会工作服务中心的每一位爱心满满的家人一路的支持与善助，我们定于2018年4月9日(即星期一)早上8点半钟，将再次前往遂溪县遂城镇敬老院，老人家的房间与院子各处的卫生需要我们再次去关注，现向爱心家人们发出爱心召唤令，招募15名志愿者与遂城镇的社会工作者一起到敬老院搞卫生。 温馨提示: 1.在此接龙报名后，必须在i志愿平台报名，才能有服务时长，如无需，即可忽视！ 2、活动期间汽车油费、过路费、餐费开支实行AA制。 3、免责声明:所有参加人员均属自愿参加活动，参加者必须对自己的安全负责及对活动中的一切风险及导致的各种后果均自我负责和承担，发起者和同行者有义务援助，但在任何情况下均不承担任何法律和经济责任，特此声明！凡报名参加活动者均视为受本活动的免责。</span>', '2018-04-08 13:35:19', '计算机志愿服务站', '1.遂溪县善行社会工作服务中心志愿者成员。 2.走访活动，必须穿本社团工作服与佩戴工作证。 3.遵守活动秩序与安排。', '暖心活动，主要是帮助老人家收拾房间与搞干净食堂卫生！', '青少年服务', null, '/upload/9e405cbf-0be2-4def-b874-043909af0a77.jpg', '676656', '1', '预防艾滋病', '莞工松山湖校区下沉广场', null, null, '12', null, '2018-04-08 00:00:00', '2018-04-09 00:00:00');
INSERT INTO `t_acti` VALUES ('232', '<span style=\"color:#333333;font-family:&quot;Microsoft Yahei&quot;;background-color:#FFFFFF;\">感恩遂溪县善行社会工作服务中心的每一位爱心满满的家人一路的支持与善助，我们定于2018年4月9日(即星期一)早上8点半钟，将再次前往遂溪县遂城镇敬老院，老人家的房间与院子各处的卫生需要我们再次去关注，现向爱心家人们发出爱心召唤令，招募15名志愿者与遂城镇的社会工作者一起到敬老院搞卫生。 温馨提示: 1.在此接龙报名后，必须在i志愿平台报名，才能有服务时长，如无需，即可忽视！ 2、活动期间汽车油费、过路费、餐费开支实行AA制。 3、免责声明:所有参加人员均属自愿参加活动，参加者必须对自己的安全负责及对活动中的一切风险及导致的各种后果均自我负责和承担，发起者和同行者有义务援助，但在任何情况下均不承担任何法律和经济责任，特此声明！凡报名参加活动者均视为受本活动的免责。</span>', '2018-04-08 13:56:21', '计算机志愿服务站', '1.遂溪县善行社会工作服务中心志愿者成员。 2.走访活动，必须穿本社团工作服与佩戴工作证。 3.遵守活动秩序与安排。', '暖心活动，主要是帮助老人家收拾房间与搞干净食堂卫生！', '青少年服务', null, '/upload/2304c635-e0c7-45f5-92fe-59ee85fd2655.jpg', '666656', '1', '清洁一饭饭堂', '莞工松山湖校区一饭', null, null, '12', '小明', '2018-04-08 00:00:00', '2018-04-09 00:00:00');
INSERT INTO `t_acti` VALUES ('233', '<span style=\"color:#333333;font-family:&quot;Microsoft Yahei&quot;;background-color:#FFFFFF;\">2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。</span>', '2018-04-08 18:18:33', '计算机与网络安全学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '青少年服务', null, '/upload/dac196b1-24a8-4135-9832-65d3ff08ff69.jpg', '675765', '1', '清洁二饭饭堂', '东莞理工学院松山湖校区', null, null, '12', '小红', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('234', '<span style=\"color:#333333;font-family:&quot;Microsoft Yahei&quot;;background-color:#FFFFFF;\">2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。</span>', '2018-04-08 18:19:14', '计算机与网络安全学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '青少年服务', null, '/upload/fe1add0c-9395-442f-b5b5-3f4ba11b05d0.jpg', '675765', '1', '清洁三饭饭堂', '东莞理工学院松山湖校区', null, null, '12', '缪敏锋', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('235', '<span style=\"color:#333333;font-family:&quot;Microsoft Yahei&quot;;background-color:#FFFFFF;\">2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。</span>', '2018-04-08 18:20:00', '计算机与网络安全学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '青少年服务', null, '/upload/d42fea09-c6f7-42a0-ad86-9e20cc4e61b5.jpg', '675765', '1', '清洁北门一条街', '东莞理工学院松山湖校区', null, null, '12', '吴卓升', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('236', '<span style=\"color:#333333;font-family:&quot;Microsoft Yahei&quot;;background-color:#FFFFFF;\">2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。</span>', '2018-04-08 18:20:39', '计算机与网络安全学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '青少年服务', null, '/upload/fd0e114c-40a9-4fe8-9539-ed19ffab68a5.jpg', '675765', '1', '清洁操场', '东莞理工学院松山湖校区', null, null, '12', '钟厚波', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('237', '<span style=\"color:#333333;font-family:&quot;Microsoft Yahei&quot;;background-color:#FFFFFF;\">2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。</span>', '2018-04-08 18:23:14', '计算机与网络安全学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '青少年服务', null, '/upload/f55f059b-45b9-4b4f-abc1-b918d28dfee5.jpg', '675765', '1', '清洁男生宿舍', '东莞理工学院松山湖校区', null, null, '12', '叶瑞华', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('238', '<span style=\"color:#333333;font-family:&quot;Microsoft Yahei&quot;;background-color:#FFFFFF;\">2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。</span>', '2018-04-08 18:27:16', '计算机与网络安全学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '青少年服务', null, '/upload/8314620d-9efa-418f-b47b-ea7676256dc8.jpg', '675765', '1', '清洁综合大楼', '东莞理工学院松山湖校区', null, null, '12', '官伟昌', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('239', '<span style=\"color:#333333;font-family:&quot;Microsoft Yahei&quot;;background-color:#FFFFFF;\">2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。</span>', '2018-04-08 18:27:52', '计算机与网络安全学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '青少年服务', null, '/upload/10472ca7-8943-47fa-a015-7e1787374821.jpg', '675765', '1', '清洁图书馆', '东莞理工学院松山湖校区', null, null, '12', '尹锐文', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('240', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 18:58:45', '校志愿中心', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '扶贫帮困', null, '/upload/cd6c3f06-09a0-40d8-8eb1-7707d8a5d943.jpg', '565675', '1', '爱在夕阳红，浓浓敬老情志愿服务活动', '东莞理工学院松山湖校区', null, null, '12', '叶文雨', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('241', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 18:59:30', '继续教育学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '扶贫帮困', null, '/upload/7f7fa898-ac08-4f66-a87f-69d6564ae424.jpg', '565675', '1', '白渡敬老院慰问活动', '东莞理工学院松山湖校区', null, null, '12', '黄幸茵', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('242', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:00:16', '马克思主义学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '扶贫帮困', null, '/upload/d84917af-c20d-457d-ac3f-afde988f8c63.jpg', '565675', '1', '我叫马锋', '东莞理工学院松山湖校区', null, null, '12', '李映纯', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('243', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:01:06', '中法联合学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '扶贫帮困', null, '/upload/e03088ca-b905-4c4e-a156-94c8ae7eb77b.jpg', '565675', '1', '孤寡老人探访2018.4.29', '东莞理工学院松山湖校区', null, null, '12', '吴少荣', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('244', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:01:48', '中法联合学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '扶贫帮困', null, '/upload/44f71788-d997-4d37-87e6-9676a4ac8fe5.jpg', '565675', '1', '空巢探访', '东莞理工学院松山湖校区', null, null, '12', '韩淑贞', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('245', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:04:08', '教育学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '扶贫帮困', null, '/upload/6b9cbb6d-929d-4812-99e1-01a076747ab1.jpg', '456543', '1', '送医送药下乡陂面行', '东莞理工学院松山湖校区', null, null, '12', '小明', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('246', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:04:35', '教育学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '扶贫帮困', null, '/upload/e3c766b9-8ff7-452b-9e54-032d407daa86.jpg', '456543', '1', '3.31敬老院', '东莞理工学院松山湖校区', null, null, '12', '小明', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('247', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:04:54', '教育学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '扶贫帮困', null, '/upload/6d8a04a2-3bbb-4c8d-95f9-4877acb3d7af.jpg', '456543', '1', '4.1敬老院', '东莞理工学院松山湖校区', null, null, '12', '小明', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('248', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:05:27', '法律与社会工作学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '敬老助残', null, '/upload/a9b268a7-d7e0-42bd-a2e5-fb21a5510726.jpg', '456543', '1', '白渡敬老院慰问活动', '东莞理工学院松山湖校区', null, null, '12', '小明', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('249', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:05:54', '法律与社会工作学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '敬老助残', null, '/upload/163eaa99-2498-4abc-bedd-a62d4bfcb16e.jpg', '456543', '1', '关东敬老院慰问活动', '东莞理工学院松山湖校区', null, null, '12', '小明', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('250', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:06:28', '法律与社会工作学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '敬老助残', null, '/upload/cc792d62-9e70-4c80-97bf-bb0a185aa87e.jpg', '456543', '1', '汤南镇，汤坑镇发放活动', '东莞理工学院松山湖校区', null, null, '12', '小明', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('251', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:06:49', '法律与社会工作学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '敬老助残', null, '/upload/54a66f91-999b-44c4-b0e3-ad708cbd7269.jpg', '456543', '1', '2018年人间有爱~重庆城口助学行', '东莞理工学院松山湖校区', null, null, '12', '小明', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('252', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:07:10', '经济与管理学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '敬老助残', null, '/upload/5475a151-443a-454e-b20b-9473974703f9.jpg', '456543', '1', '扶贫慰问活动', '东莞理工学院松山湖校区', null, null, '12', '小明', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('253', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:07:36', '生态环境与建筑工程学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '敬老助残', null, '/upload/6da26e8d-ad92-40a0-9ab4-8186b435b435.jpg', '456543', '1', '0421创益公益义卖活动', '东莞理工学院松山湖校区', null, null, '12', '小明', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('254', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:08:02', '国际学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '敬老助残', null, '/upload/5fe7ec1a-0643-4392-9ec4-5cdd3475da0a.jpg', '456543', '1', '会计学部三下乡社会实践活动', '东莞理工学院松山湖校区', null, null, '12', '小明', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('255', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:08:28', '文学与传媒学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '敬老助残', null, '/upload/903af78a-74cc-40d5-a2b9-8c68ced35488.jpg', '456543', '1', '关爱困难职工', '东莞理工学院松山湖校区', null, null, '12', '小明', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('256', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:08:50', '文学与传媒学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '敬老助残', null, '/upload/0236ca03-c7fe-48b4-86d0-dee9f03890e9.jpg', '456543', '1', '管理学部三下乡活动', '东莞理工学院松山湖校区', null, null, '12', '小明', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('257', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:09:21', '校志愿中心', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '敬老助残', null, '/upload/fdb7e6b6-fb05-497d-8058-15d24e4ef0c1.jpg', '456543', '1', '困难职工入户调查（持续活动第77期含补录）', '东莞理工学院松山湖校区', null, null, '12', '小明', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('258', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:09:45', '校志愿中心', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '敬老助残', null, '/upload/18fe6ec0-ded9-4b1a-9111-99df060fd94b.jpg', '456543', '1', '4月11日“黄色小票”现场集票', '东莞理工学院松山湖校区', null, null, '12', '小明', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('259', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:10:28', '校志愿中心', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '文明礼仪', null, '/upload/6e65c854-5d28-4178-992a-673f281beaa7.jpg', '456543', '1', '12月1日槎滘小学校运会协助维持秩序！', '东莞理工学院松山湖校区', null, null, '12', '小红', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('260', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:10:52', '校志愿中心', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '文明礼仪', null, '/upload/21dbba1c-aa5a-4bf2-aaa8-661cea8402a2.jpg', '456543', '1', '弘扬妈祖文化，湄洲妈祖巡安榕江西胪，存心榕江义工', '东莞理工学院松山湖校区', null, null, '12', '小红', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('261', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:11:10', '校志愿中心', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '文明礼仪', null, '/upload/64ff54cd-0924-4927-952a-cf2456ba5d02.jpg', '456543', '1', '创文系列活动', '东莞理工学院松山湖校区', null, null, '12', '小红', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('262', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:11:35', '化学工程与能源技术学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '文明礼仪', null, '/upload/e9436681-a315-41b9-a6e2-eb588169e789.jpg', '456543', '1', '文明交通志愿服务', '东莞理工学院松山湖校区', null, null, '12', '小红', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('263', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:11:57', '经济与管理学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '文明礼仪', null, '/upload/1de5c81b-3d7c-48de-97b6-2cd2c5213686.jpg', '456543', '1', '创建文明城市，做好升平路段的保洁督导工作', '东莞理工学院松山湖校区', null, null, '12', '小红', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('264', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:12:16', '经济与管理学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '文明礼仪', null, '/upload/085f971b-b5fd-4443-8d1e-ea6a45260cbb.jpg', '456543', '1', '广东省第十五届运动会礼仪志愿者（高要校区）', '东莞理工学院松山湖校区', null, null, '12', '小红', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('265', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:12:39', '经济与管理学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '文明礼仪', null, '/upload/776a6de4-917c-4c04-ab3a-44a9c8bbccaa.jpg', '456543', '1', '“我们的节日——粽子飘香”端午纪念活动', '东莞理工学院松山湖校区', null, null, '12', '小红', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('266', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:12:59', '经济与管理学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '文明礼仪', null, '/upload/1f9d1642-4e12-4aac-9ae7-a19cbda6a95e.jpg', '456543', '1', '助力创卫交通引导活动', '东莞理工学院松山湖校区', null, null, '12', '小红', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('267', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:13:25', '经济与管理学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '文明礼仪', null, '/upload/c9988ae5-d45b-407e-a4ad-a8dbbddb1f49.jpg', '456543', '1', '名爱总队萱乘志愿者服务队成立仪式活动志愿者招募', '东莞理工学院松山湖校区', null, null, '12', '小红', '2018-04-08 00:00:00', '2018-04-08 00:00:00');
INSERT INTO `t_acti` VALUES ('268', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018-04-08 19:15:39', '经济与管理学院志愿服务站', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', '扶贫帮困', null, '/upload/28619c1f-ea18-433a-b547-d573eca4369b.jpg', '456543', '1', '名爱总队萱乘志愿者服务队成立仪式活动志愿者招募', '东莞理工学院松山湖校区', null, null, '12', '小红', '2018-04-08 00:00:00', '2018-04-08 00:00:00');

-- ----------------------------
-- Table structure for `t_borad`
-- ----------------------------
DROP TABLE IF EXISTS `t_borad`;
CREATE TABLE `t_borad` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text,
  `fbman` varchar(255) DEFAULT NULL,
  `fbtime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `fblx` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_borad
-- ----------------------------
INSERT INTO `t_borad` VALUES ('49', '', '77', '2018-04-09 13:49:18', '1', '77', '/upload/ac418ab4-4d91-4e14-8d0c-0ba36ab7e756.jpg', '志愿文化');
INSERT INTO `t_borad` VALUES ('50', '888', '88', '2018-04-09 13:52:39', '1', '88', '/upload/8615f762-024d-4619-b41c-3da52c7d440e.jpg', '志愿资讯');
INSERT INTO `t_borad` VALUES ('51', '999', '99', '2018-04-09 17:37:40', '1', '999', '/upload/64fb6cd0-1e41-43ce-8e59-e07bf364178d.jpg', '信息公告');
INSERT INTO `t_borad` VALUES ('52', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', 'miao', '2018-04-09 22:12:02', '1', '【计院】清洁女生宿舍风扇活动', '/upload/25404867-98e7-4ee5-92fc-42ec6ae7280f.jpg', '志愿资讯');
INSERT INTO `t_borad` VALUES ('53', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', 'min', '2018-04-09 22:13:02', '1', '【电子】三月学雷锋，公益你我他', '/upload/fe44fdbd-2013-4eb4-8fa7-6542e22c7b7e.jpg', '志愿资讯');
INSERT INTO `t_borad` VALUES ('54', '2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。', 'feng', '2018-04-09 22:14:13', '1', '【文学院】用笔公益，以书公益，公益你我他', '/upload/ce2b5df9-dabf-469e-a3dc-41a2b9b161e8.jpg', '志愿资讯');
INSERT INTO `t_borad` VALUES ('55', '<p>\r\n	2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。\r\n</p>\r\n<p>\r\n	让我们一起加入志愿大家庭，在广东志愿者网注册成为一名志愿者。\r\n</p>', '吴卓升', '2018-04-09 22:21:37', '1', '关于落实每个学院每个班级同学注册志愿者的通知', '/upload/bdd1ec65-e241-4801-b8be-bb78f57b2546.jpg', '信息公告');
INSERT INTO `t_borad` VALUES ('56', '<p>\r\n	2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。\r\n</p>\r\n<p>\r\n	让我们一起加入志愿大家庭，在广东志愿者网注册成为一名志愿者。\r\n</p>', '钟厚波', '2018-04-09 22:22:48', '1', '关于落实雷锋月每个班级搞好班级志愿活动的通知', '/upload/41398895-a01c-482a-ba64-16efc6313d77.jpg', '信息公告');
INSERT INTO `t_borad` VALUES ('57', '<p>\r\n	2018年“不忘初心，砥砺前行，我们的公益”，志愿情，永不灭。\r\n</p>\r\n<p>\r\n	让我们一起加入志愿大家庭，在广东志愿者网注册成为一名志愿者。\r\n</p>', '叶瑞华', '2018-04-09 22:23:51', '1', '关于招募挑战杯志愿者的通知', '/upload/2e477b4a-5772-4f1e-a78a-9dc26820d1e7.jpg', '信息公告');
INSERT INTO `t_borad` VALUES ('58', '<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:宋体;line-height:23px;\">11岁萌生扶贫救助做公益的想法，15岁创办一支公益团队“澄海青少年志愿社”，组织环保活动、关爱孤寡老人、捐书助学……这是汕头澄海少年陈沛涵的社会公益之路。目前，17岁的陈沛涵正在读高三，因学业较重，他辞去了志愿社的工作，不过，每次有志愿活动，他总会抽空参加，志愿社的成员也喜欢找他这个“创始人”商量开展工作。</span><strong><br />\r\n</strong>\r\n</p>\r\n<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<strong><span style=\"font-family:宋体;line-height:23px;\">15岁组织创办“澄海青少年志愿社”</span></strong>\r\n</p>\r\n<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:宋体;line-height:23px;\">在志愿社初见陈沛涵时，只觉他外表稚气未脱，但言行成熟稳重，聊起话来侃侃而谈。说起创办志愿社的初衷，陈沛涵谈及汶川地震，年仅11岁的他看到不少志愿者进入汶川支援救灾。那时他就希望有朝一日能成为这些志愿者中的一员。后来，陈沛涵通过各个途径了解志愿者工作，并通过参加学校的志愿服务，亲身感受公益事业。</span>\r\n</p>\r\n<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:宋体;line-height:23px;\">2012年，正在读初三的陈沛涵与几名志同道合的同学一起，决心创办一个以青少年为主体的公益社团组织，以此实现自己的公益之梦，也为热心公益的青少年提供一个平台。“当时我只有15岁，几个小伙伴中最大的也才16岁。我们去民政部门申请注册登记时，被退了回来，因为不具备注册条件。”陈沛涵说</span>\r\n</p>\r\n<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<strong><span style=\"font-family:宋体;line-height:23px;\">在关爱孤</span></strong><span style=\"font-family:宋体;\">陈沛涵说。</span>\r\n</p>\r\n<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<strong><span style=\"font-family:宋体;line-height:23px;\">多学公益知识致力家乡慈善事业</span></strong>\r\n</p>\r\n<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:宋体;line-height:23px;\">如今，“澄海青少年志愿社”成立已经有两年多，在志愿社报名登记的志愿者、社员一共有700多人，志愿社开展的活动也越来越丰富，越来越有影响力。澄海当地的市民渐渐都知道有这群热心公益的青少年。一些受帮助过的孤寡老人，还总是叨念他们，每次跟他们聊天总是舍不得让他们走。志愿社“捐书助学”的捐赠点也扩展到了澄海区各个镇街，一些面包店还成为了他们的固定捐赠点，受志愿社捐助而成立的图书室也不在少数。</span>\r\n</p>\r\n<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:宋体;line-height:23px;\">回顾这些年和志愿社一起成长的道路，陈沛涵觉得，“澄海青少年志愿社”成就了他“不靠谱”的公益梦，也帮助了许多需要帮助的人。“为什么说是‘不靠谱’，因为正常人像我这么大的时候，应该在读书，而我却在做一些同龄人很少做的事，在传统的人看来，我确实很不靠谱。”陈沛涵笑着说。下来，他希望有机会到大城市读书，多学习一些与公益、管理有关的东西，或者参加一些公益社团，把一些新知识带回去，促进家乡公益事业的发展。</span>\r\n</p>', '陈沛涵', '2018-04-09 22:39:35', '1', '澄海少年陈沛涵15岁创办“澄海青少年志愿社”', '/upload/416aeabb-2153-450c-8a5b-cac06fcaf2d9.jpg', '志愿文化');
INSERT INTO `t_borad` VALUES ('59', '<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:宋体;line-height:23px;\">\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">“他对我的影响是从小渗透到现在，其实不只是爱好上的，在性格和精神上都对我都产生深厚的影响。”</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">她，六岁初识邻人老先生，不想彼此竟成了忘年之交。年幼的邹纯娓被他的温文谦和所折服，被他的博学多才所吸引，为他身上的特有的古儒风韵所着迷。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">对于邹纯娓来说，老先生就是她人生的启蒙导师。他教她，</span><span style=\"font-weight:700;font-family:宋体;line-height:23px;\">君子性如兰，行欲方，礼应谦，且心阔要容天下。</span><span style=\"font-family:宋体;line-height:23px;\">她便自小视兰竹为友；他教她，执笔丹青，舞墨诵诗，品茶赏戏，她逐渐爱上这中华古韵之精华，品味这传统文化之瑰宝。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">就这样，在亦师亦友的邻人老先生的熏陶下，国画书法成为了她的兴趣爱好，喝茶看潮剧已是其日常习惯，沉迷于诗词歌赋，也倾心于古风雅韵，颇有古代才女之风姿。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">她学到他温润如兰的处事风格，学到他虚怀若谷的谦意好学，学到他“外圆内方”的生活态度。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">因而在对于自己至高的人生追求上，</span><span style=\"font-weight:700;font-family:宋体;line-height:23px;\">邹纯娓希望自己能够如老先生一般，在处事方面，“猝然临之而不惊，无故加之而不怒”，不管什么事情都能坦然面对，试着去享受“既来之则安之”的泰然；在为人方面，“心欲小而志欲大，智欲圆而行欲方”，以到达与人相处能使对方感到自然舒适的状态；</span><span style=\"font-family:宋体;line-height:23px;\">而在立心上，她希望自己是一个能面对风云而内心强大的人，用其熟读的《庄子》中的话说即“知其无可奈何而安之若命，知其可以纵横而行之无忌”。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">她深谙国学，熟读诗文，在古风古韵中温养了愈发的兰心蕙性，而文学底蕴也成为了她走向更高平台的基石。</span>\r\n	</p>\r\n</span>\r\n</p>\r\n<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:宋体;line-height:23px;\"></span>\r\n</p>', '邹纯娓', '2018-04-09 22:40:50', '1', '邹纯娓：与优秀同行，领略诗与远方', '/upload/931af605-6c22-4944-aaec-097a1f61cb28.jpg', '志愿文化');
INSERT INTO `t_borad` VALUES ('60', '<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:宋体;line-height:23px;\">\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">“他对我的影响是从小渗透到现在，其实不只是爱好上的，在性格和精神上都对我都产生深厚的影响。”</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">她，六岁初识邻人老先生，不想彼此竟成了忘年之交。年幼的邹纯娓被他的温文谦和所折服，被他的博学多才所吸引，为他身上的特有的古儒风韵所着迷。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">对于邹纯娓来说，老先生就是她人生的启蒙导师。他教她，</span><span style=\"font-weight:700;font-family:宋体;line-height:23px;\">君子性如兰，行欲方，礼应谦，且心阔要容天下。</span><span style=\"font-family:宋体;line-height:23px;\">她便自小视兰竹为友；他教她，执笔丹青，舞墨诵诗，品茶赏戏，她逐渐爱上这中华古韵之精华，品味这传统文化之瑰宝。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">就这样，在亦师亦友的邻人老先生的熏陶下，国画书法成为了她的兴趣爱好，喝茶看潮剧已是其日常习惯，沉迷于诗词歌赋，也倾心于古风雅韵，颇有古代才女之风姿。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">她学到他温润如兰的处事风格，学到他虚怀若谷的谦意好学，学到他“外圆内方”的生活态度。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">因而在对于自己至高的人生追求上，</span><span style=\"font-weight:700;font-family:宋体;line-height:23px;\">邹纯娓希望自己能够如老先生一般，在处事方面，“猝然临之而不惊，无故加之而不怒”，不管什么事情都能坦然面对，试着去享受“既来之则安之”的泰然；在为人方面，“心欲小而志欲大，智欲圆而行欲方”，以到达与人相处能使对方感到自然舒适的状态；</span><span style=\"font-family:宋体;line-height:23px;\">而在立心上，她希望自己是一个能面对风云而内心强大的人，用其熟读的《庄子》中的话说即“知其无可奈何而安之若命，知其可以纵横而行之无忌”。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">她深谙国学，熟读诗文，在古风古韵中温养了愈发的兰心蕙性，而文学底蕴也成为了她走向更高平台的基石。</span>\r\n	</p>\r\n</span>\r\n</p>\r\n<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:宋体;line-height:23px;\"></span>\r\n</p>', '林敏标', '2018-04-09 22:41:40', '1', '林敏标：志愿事业是最后的归宿', '/upload/fb038a1a-b8cf-45d6-a1f2-93a944acd48c.jpg', '志愿文化');
INSERT INTO `t_borad` VALUES ('61', '<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:宋体;line-height:23px;\">\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">“他对我的影响是从小渗透到现在，其实不只是爱好上的，在性格和精神上都对我都产生深厚的影响。”</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">她，六岁初识邻人老先生，不想彼此竟成了忘年之交。年幼的邹纯娓被他的温文谦和所折服，被他的博学多才所吸引，为他身上的特有的古儒风韵所着迷。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">对于邹纯娓来说，老先生就是她人生的启蒙导师。他教她，</span><span style=\"font-weight:700;font-family:宋体;line-height:23px;\">君子性如兰，行欲方，礼应谦，且心阔要容天下。</span><span style=\"font-family:宋体;line-height:23px;\">她便自小视兰竹为友；他教她，执笔丹青，舞墨诵诗，品茶赏戏，她逐渐爱上这中华古韵之精华，品味这传统文化之瑰宝。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">就这样，在亦师亦友的邻人老先生的熏陶下，国画书法成为了她的兴趣爱好，喝茶看潮剧已是其日常习惯，沉迷于诗词歌赋，也倾心于古风雅韵，颇有古代才女之风姿。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">她学到他温润如兰的处事风格，学到他虚怀若谷的谦意好学，学到他“外圆内方”的生活态度。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">因而在对于自己至高的人生追求上，</span><span style=\"font-weight:700;font-family:宋体;line-height:23px;\">邹纯娓希望自己能够如老先生一般，在处事方面，“猝然临之而不惊，无故加之而不怒”，不管什么事情都能坦然面对，试着去享受“既来之则安之”的泰然；在为人方面，“心欲小而志欲大，智欲圆而行欲方”，以到达与人相处能使对方感到自然舒适的状态；</span><span style=\"font-family:宋体;line-height:23px;\">而在立心上，她希望自己是一个能面对风云而内心强大的人，用其熟读的《庄子》中的话说即“知其无可奈何而安之若命，知其可以纵横而行之无忌”。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">她深谙国学，熟读诗文，在古风古韵中温养了愈发的兰心蕙性，而文学底蕴也成为了她走向更高平台的基石。</span>\r\n	</p>\r\n</span>\r\n</p>\r\n<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:宋体;line-height:23px;\"></span>\r\n</p>', '徐暐杰', '2018-04-09 22:42:08', '1', '徐暐杰：淡淡地去做志愿者，淡淡地去过自己的人生', '/upload/4cbce0bb-4c92-4270-900e-7f32f686abba.jpg', '志愿文化');
INSERT INTO `t_borad` VALUES ('62', '<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:宋体;line-height:23px;\">\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">“他对我的影响是从小渗透到现在，其实不只是爱好上的，在性格和精神上都对我都产生深厚的影响。”</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">她，六岁初识邻人老先生，不想彼此竟成了忘年之交。年幼的邹纯娓被他的温文谦和所折服，被他的博学多才所吸引，为他身上的特有的古儒风韵所着迷。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">对于邹纯娓来说，老先生就是她人生的启蒙导师。他教她，</span><span style=\"font-weight:700;font-family:宋体;line-height:23px;\">君子性如兰，行欲方，礼应谦，且心阔要容天下。</span><span style=\"font-family:宋体;line-height:23px;\">她便自小视兰竹为友；他教她，执笔丹青，舞墨诵诗，品茶赏戏，她逐渐爱上这中华古韵之精华，品味这传统文化之瑰宝。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">就这样，在亦师亦友的邻人老先生的熏陶下，国画书法成为了她的兴趣爱好，喝茶看潮剧已是其日常习惯，沉迷于诗词歌赋，也倾心于古风雅韵，颇有古代才女之风姿。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">她学到他温润如兰的处事风格，学到他虚怀若谷的谦意好学，学到他“外圆内方”的生活态度。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">因而在对于自己至高的人生追求上，</span><span style=\"font-weight:700;font-family:宋体;line-height:23px;\">邹纯娓希望自己能够如老先生一般，在处事方面，“猝然临之而不惊，无故加之而不怒”，不管什么事情都能坦然面对，试着去享受“既来之则安之”的泰然；在为人方面，“心欲小而志欲大，智欲圆而行欲方”，以到达与人相处能使对方感到自然舒适的状态；</span><span style=\"font-family:宋体;line-height:23px;\">而在立心上，她希望自己是一个能面对风云而内心强大的人，用其熟读的《庄子》中的话说即“知其无可奈何而安之若命，知其可以纵横而行之无忌”。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">她深谙国学，熟读诗文，在古风古韵中温养了愈发的兰心蕙性，而文学底蕴也成为了她走向更高平台的基石。</span>\r\n	</p>\r\n</span>\r\n</p>\r\n<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:宋体;line-height:23px;\"></span>\r\n</p>', '陈美璃', '2018-04-09 22:42:32', '1', '陈美璃：“会发声的盲杖”', '/upload/360c7b72-5fee-4673-bf46-62bc36351102.jpg', '志愿文化');
INSERT INTO `t_borad` VALUES ('63', '<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:宋体;line-height:23px;\">\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">“他对我的影响是从小渗透到现在，其实不只是爱好上的，在性格和精神上都对我都产生深厚的影响。”</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">她，六岁初识邻人老先生，不想彼此竟成了忘年之交。年幼的邹纯娓被他的温文谦和所折服，被他的博学多才所吸引，为他身上的特有的古儒风韵所着迷。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">对于邹纯娓来说，老先生就是她人生的启蒙导师。他教她，</span><span style=\"font-weight:700;font-family:宋体;line-height:23px;\">君子性如兰，行欲方，礼应谦，且心阔要容天下。</span><span style=\"font-family:宋体;line-height:23px;\">她便自小视兰竹为友；他教她，执笔丹青，舞墨诵诗，品茶赏戏，她逐渐爱上这中华古韵之精华，品味这传统文化之瑰宝。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">就这样，在亦师亦友的邻人老先生的熏陶下，国画书法成为了她的兴趣爱好，喝茶看潮剧已是其日常习惯，沉迷于诗词歌赋，也倾心于古风雅韵，颇有古代才女之风姿。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">她学到他温润如兰的处事风格，学到他虚怀若谷的谦意好学，学到他“外圆内方”的生活态度。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">因而在对于自己至高的人生追求上，</span><span style=\"font-weight:700;font-family:宋体;line-height:23px;\">邹纯娓希望自己能够如老先生一般，在处事方面，“猝然临之而不惊，无故加之而不怒”，不管什么事情都能坦然面对，试着去享受“既来之则安之”的泰然；在为人方面，“心欲小而志欲大，智欲圆而行欲方”，以到达与人相处能使对方感到自然舒适的状态；</span><span style=\"font-family:宋体;line-height:23px;\">而在立心上，她希望自己是一个能面对风云而内心强大的人，用其熟读的《庄子》中的话说即“知其无可奈何而安之若命，知其可以纵横而行之无忌”。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n		<span style=\"font-family:宋体;line-height:23px;\">她深谙国学，熟读诗文，在古风古韵中温养了愈发的兰心蕙性，而文学底蕴也成为了她走向更高平台的基石。</span>\r\n	</p>\r\n</span>\r\n</p>\r\n<p align=\"left\" style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:宋体;line-height:23px;\"></span>\r\n</p>', '陈建宇', '2018-04-09 22:43:00', '1', '陈建宇：平凡人做平凡事，奉献他人 ,提升自己', '/upload/247b53f5-61b0-407b-94de-12eb9a7aa4d3.jpg', '志愿文化');

-- ----------------------------
-- Table structure for `t_college`
-- ----------------------------
DROP TABLE IF EXISTS `t_college`;
CREATE TABLE `t_college` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `collegeName` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `xjorganization` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeks7acr8y7gejxtur9fo7oned` (`user_id`),
  CONSTRAINT `FKeks7acr8y7gejxtur9fo7oned` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_college
-- ----------------------------
INSERT INTO `t_college` VALUES ('1', '计算机与网络安全学院', '1', null, '/upload/logo.jpg', '计算机与网络安全学院志愿服务站', '向日葵义教志愿服务队', null);
INSERT INTO `t_college` VALUES ('2', '电子工程与智能化学院', '1', null, '/upload/logo.jpg', '电子工程与智能化学院志愿服务站', '雨露助残志愿服务队', null);
INSERT INTO `t_college` VALUES ('3', '生态环境与建筑工程学院', '1', null, '/upload/logo.jpg', '生态环境与建筑工程学院志愿服务站', '莞昕志愿服务队', null);
INSERT INTO `t_college` VALUES ('4', '机械工程学院', '1', null, '/upload/logo.jpg', '机械工程学院志愿服务站', '七彩课堂专项志愿服务队', null);
INSERT INTO `t_college` VALUES ('5', '文学与传媒学院', '1', null, '/upload/logo.jpg', '文学与传媒学院志愿服务站', 'E-go志愿服务队', null);
INSERT INTO `t_college` VALUES ('6', '校志愿中心', '1', null, '/upload/logo.jpg', '校志愿中心', '宏远篮球志愿服务队', null);
INSERT INTO `t_college` VALUES ('107', '计算机与网络安全学院', '1', null, '/upload/logo.jpg', '计算机与网络安全学院志愿服务站', '向日葵义教志愿服务队', null);
INSERT INTO `t_college` VALUES ('108', '计算机与网络安全学院', '1', null, '/upload/logo.jpg', '计算机与网络安全学院志愿服务站', '向日葵义教志愿服务队', null);
INSERT INTO `t_college` VALUES ('109', '计算机与网络安全学院', '1', null, '/upload/logo.jpg', '计算机与网络安全学院志愿服务站', '向日葵义教志愿服务队', null);
INSERT INTO `t_college` VALUES ('111', '粤台产业科技学院', '1', null, '/upload/logo.jpg', '粤台产业科技学院志愿服务站', null, null);
INSERT INTO `t_college` VALUES ('112', '国际学院', '1', null, '/upload/logo.jpg', '国际学院志愿服务站', null, null);
INSERT INTO `t_college` VALUES ('115', '经济与管理学院', '1', null, '/upload/logo.jpg', '经济与管理学院志愿服务站', null, null);
INSERT INTO `t_college` VALUES ('117', '法律与社会工作学院', '1', null, '/upload/logo.jpg', '法律与社会工作学院志愿服务站', null, null);
INSERT INTO `t_college` VALUES ('118', '教育学院', '1', null, '/upload/logo.jpg', '教育学院志愿服务站', null, null);
INSERT INTO `t_college` VALUES ('119', '化学工程与能源技术学院', '1', null, '/upload/logo.jpg', '化学工程与能源技术学院志愿服务站', null, null);
INSERT INTO `t_college` VALUES ('120', '中法联合学院', '1', null, '/upload/logo.jpg', '中法联合学院志愿服务站', null, null);
INSERT INTO `t_college` VALUES ('122', '马克思主义学院', '1', null, '/upload/logo.jpg', '马克思主义学院志愿服务站', null, null);
INSERT INTO `t_college` VALUES ('123', '继续教育学院', '1', null, null, '继续教育学院志愿服务站', null, null);
INSERT INTO `t_college` VALUES ('125', '333', '0', null, null, '333', '333', null);

-- ----------------------------
-- Table structure for `t_comment`
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(255) DEFAULT NULL,
  `parentId` bigint(20) DEFAULT NULL,
  `respTime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `zan` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `t_comment_ibfk_1` FOREIGN KEY (`id`) REFERENCES `t_share` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('10', '216', '1', '2018-04-15 11:05:28', null, null, '31231');
INSERT INTO `t_comment` VALUES ('11', '216', '1', '2018-04-15 12:35:26', null, null, '3213');
INSERT INTO `t_comment` VALUES ('12', '216', '1', '2018-04-15 12:36:42', null, null, '3213');
INSERT INTO `t_comment` VALUES ('17', '216', '12', '2018-04-15 16:03:03', null, null, '回复@aaa :5656');
INSERT INTO `t_comment` VALUES ('18', '216', '12', '2018-04-15 16:04:28', null, null, '回复@aaa :2222');
INSERT INTO `t_comment` VALUES ('34', '216', '12', '2018-04-15 16:33:20', null, null, '回复@aaa :555');
INSERT INTO `t_comment` VALUES ('35', '216', '12', '2018-04-15 16:51:24', null, null, '回复@aaa :www');
INSERT INTO `t_comment` VALUES ('36', '216', '12', '2018-04-16 19:29:27', null, null, '回复@aaa :3213');

-- ----------------------------
-- Table structure for `t_enroll`
-- ----------------------------
DROP TABLE IF EXISTS `t_enroll`;
CREATE TABLE `t_enroll` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `college` varchar(255) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `idCard` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `studentNo` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `xjorganization` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `hdName` varchar(255) DEFAULT NULL,
  `hdTime` datetime DEFAULT NULL,
  `hdType` varchar(255) DEFAULT NULL,
  `pxTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_enroll
-- ----------------------------
INSERT INTO `t_enroll` VALUES ('1', null, '2', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, 'aaa', null, null, null, '1', '恭喜你成功报名此次活动，请注意查看手机消息。', '清洁校园', '2018-04-11 00:00:00', null, null);
INSERT INTO `t_enroll` VALUES ('2', null, '3', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三2', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('3', null, '4', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三3', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('4', null, '5', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三4', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('5', null, '6', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三5', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('6', null, '7', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三6', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('7', null, '8', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三7', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('8', null, '9', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三8', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('9', null, '10', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三9', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('10', null, '11', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三10', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('11', null, '12', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三11', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('12', null, '13', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三12', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('13', null, '14', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三13', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('14', null, '15', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三14', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('15', null, '16', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三15', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('16', null, '17', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三16', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('17', null, '18', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三17', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('18', null, '19', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三18', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('19', null, '20', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三19', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('20', null, '21', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三20', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('21', null, '22', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三21', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('22', null, '23', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三22', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('23', null, '24', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三23', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('24', null, '25', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三24', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('25', null, '26', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三25', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('26', null, '27', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三26', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('27', null, '28', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三27', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('28', null, '29', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三28', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('29', null, '30', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三29', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('30', null, '31', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三30', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('31', null, '32', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三31', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('32', null, '33', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三32', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('33', null, '34', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三33', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('34', null, '35', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三34', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('35', null, '36', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三35', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('36', null, '37', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三36', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('37', null, '38', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三37', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('38', null, '39', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三38', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('39', null, '40', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三39', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('40', null, '41', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三40', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('41', null, '42', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三41', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('42', null, '43', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三42', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('43', null, '44', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三43', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('44', null, '45', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三44', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('45', null, '46', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三45', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('46', null, '47', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三46', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('47', null, '48', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三47', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('48', null, '49', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三48', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('49', null, '50', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三49', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('50', null, '51', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三50', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('51', null, '52', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三51', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('52', null, '53', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三52', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('53', null, '54', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三53', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('54', null, '55', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三54', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('55', null, '56', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三55', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('56', null, '57', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三56', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('57', null, '58', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三57', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('58', null, '59', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三58', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('59', null, '60', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三59', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('60', null, '61', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三60', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('61', null, '62', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三61', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('62', null, '63', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三62', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('63', null, '64', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三63', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('64', null, '65', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三64', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('65', null, '66', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三65', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('66', null, '67', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三66', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('67', null, '68', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三67', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('68', null, '69', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三68', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('69', null, '70', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三69', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('70', null, '71', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三70', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('71', null, '72', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三71', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('72', null, '73', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三72', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('73', null, '74', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三73', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('74', null, '75', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三74', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('75', null, '76', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三75', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('76', null, '77', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三76', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('77', null, '78', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三77', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('78', null, '79', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三78', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('79', null, '80', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三79', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('80', null, '81', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三80', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('81', null, '82', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三81', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('82', null, '83', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三82', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('83', null, '84', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三83', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('84', null, '85', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三84', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('85', null, '86', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三85', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('86', null, '87', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三86', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('87', null, '88', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三87', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('88', null, '89', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三88', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('89', null, '90', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三89', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('90', null, '91', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三90', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('91', null, '92', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三91', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('92', null, '93', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三92', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('93', null, '94', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三93', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('94', null, '95', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三94', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('95', null, '96', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三95', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('96', null, '97', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三96', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('97', null, '98', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三97', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('98', null, '99', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三98', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('99', null, '100', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三99', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('100', null, '101', null, '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', null, null, null, '张三100', null, null, null, '0', '恭喜你成功报名此次活动，请注意查看手机消息。', null, null, null, null);
INSERT INTO `t_enroll` VALUES ('101', '33', '3', '33', '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', '33', '男', '33', 'aaa', '计算机与网络安全学院', '33', null, '0', null, '清洁图书馆', '2018-04-11 00:00:00', '青少年服务', '4');

-- ----------------------------
-- Table structure for `t_img`
-- ----------------------------
DROP TABLE IF EXISTS `t_img`;
CREATE TABLE `t_img` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_img
-- ----------------------------
INSERT INTO `t_img` VALUES ('1', '/upload/f51e0b83-e88c-44b9-af13-a373a308939b.jpg', '1');
INSERT INTO `t_img` VALUES ('2', '/upload/c966e035-f47c-4a44-bbe5-3dfd53df7a35.jpg', '1');
INSERT INTO `t_img` VALUES ('3', '/upload/4457ecf3-f28c-4d90-9089-072741c161c1.png', '1');
INSERT INTO `t_img` VALUES ('4', '/upload/dccfaf5f-93bf-4e1e-9791-2aeb5a48aeba.png', '1');
INSERT INTO `t_img` VALUES ('5', '/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png', '1');

-- ----------------------------
-- Table structure for `t_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `method` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `operationTime` datetime DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1389 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES ('1', '登录系统', '系统登录', '2018-02-09 21:43:03', '201441402302');
INSERT INTO `t_log` VALUES ('2', '登录系统', '系统登录', '2018-02-09 21:50:39', '201441402302');
INSERT INTO `t_log` VALUES ('3', '查找多条数据并分页排序', '部门管理', '2018-02-09 21:57:26', '312');
INSERT INTO `t_log` VALUES ('4', '登录系统', '系统登录', '2018-02-09 21:57:49', '312');
INSERT INTO `t_log` VALUES ('5', '查找多条数据并分页排序', '部门管理', '2018-02-09 21:57:51', '201441402302');
INSERT INTO `t_log` VALUES ('6', '登录系统', '系统登录', '2018-02-09 22:16:32', '312');
INSERT INTO `t_log` VALUES ('7', '登录系统', '系统登录', '2018-02-09 22:30:12', '312');
INSERT INTO `t_log` VALUES ('8', '登录系统', '系统登录', '2018-02-09 22:30:28', '201441402302');
INSERT INTO `t_log` VALUES ('9', '登录系统', '系统登录', '2018-02-09 22:39:40', '2097');
INSERT INTO `t_log` VALUES ('10', '登录系统', '系统登录', '2018-02-09 22:54:07', '201441402302');
INSERT INTO `t_log` VALUES ('11', '登录系统', '系统登录', '2018-02-09 22:59:44', '201441402302');
INSERT INTO `t_log` VALUES ('12', '登录系统', '系统登录', '2018-02-09 23:00:58', '201441402302');
INSERT INTO `t_log` VALUES ('13', '登录系统', '系统登录', '2018-02-09 23:01:46', '201441402302');
INSERT INTO `t_log` VALUES ('14', '登录系统', '系统登录', '2018-02-09 23:04:02', '201441402302');
INSERT INTO `t_log` VALUES ('15', '登录系统', '系统登录', '2018-02-09 23:05:46', '201441402302');
INSERT INTO `t_log` VALUES ('16', '登录系统', '系统登录', '2018-02-09 23:09:53', '201441402302');
INSERT INTO `t_log` VALUES ('17', '登录系统', '系统登录', '2018-02-09 23:10:32', '201441402302');
INSERT INTO `t_log` VALUES ('18', '登录系统', '系统登录', '2018-02-10 09:10:50', '201441402302');
INSERT INTO `t_log` VALUES ('19', '登录系统', '系统登录', '2018-02-10 09:11:37', '201441402302');
INSERT INTO `t_log` VALUES ('20', '登录系统', '系统登录', '2018-02-10 09:12:00', '201441402302');
INSERT INTO `t_log` VALUES ('21', '登录系统', '系统登录', '2018-02-10 09:14:55', '201441402302');
INSERT INTO `t_log` VALUES ('22', '登录系统', '系统登录', '2018-02-10 09:15:05', '201441402302');
INSERT INTO `t_log` VALUES ('23', '登录系统', '系统登录', '2018-02-10 09:16:28', '201441402302');
INSERT INTO `t_log` VALUES ('24', '登录系统', '系统登录', '2018-02-10 09:17:20', '201441402302');
INSERT INTO `t_log` VALUES ('25', '登录系统', '系统登录', '2018-02-10 09:17:43', '201441402302');
INSERT INTO `t_log` VALUES ('26', '登录系统', '系统登录', '2018-02-10 09:18:22', '201441402302');
INSERT INTO `t_log` VALUES ('27', '登录系统', '系统登录', '2018-02-10 09:19:19', '201441402302');
INSERT INTO `t_log` VALUES ('28', '登录系统', '系统登录', '2018-02-10 09:19:45', '201441402302');
INSERT INTO `t_log` VALUES ('29', '登录系统', '系统登录', '2018-02-10 09:20:22', '201441402302');
INSERT INTO `t_log` VALUES ('30', '登录系统', '系统登录', '2018-02-10 09:21:24', '201441402302');
INSERT INTO `t_log` VALUES ('31', '登录系统', '系统登录', '2018-02-10 09:24:52', '201441402302');
INSERT INTO `t_log` VALUES ('32', '登录系统', '系统登录', '2018-02-10 09:25:49', '201441402302');
INSERT INTO `t_log` VALUES ('33', '登录系统', '系统登录', '2018-02-10 09:44:33', '2096');
INSERT INTO `t_log` VALUES ('34', '登录系统', '系统登录', '2018-02-10 09:49:17', '201441402302');
INSERT INTO `t_log` VALUES ('35', '登录系统', '系统登录', '2018-02-10 09:51:57', '201441402302');
INSERT INTO `t_log` VALUES ('36', '查找多条数据并分页排序', '部门管理', '2018-02-10 09:51:59', '201441402302');
INSERT INTO `t_log` VALUES ('37', '登录系统', '系统登录', '2018-02-10 18:42:43', '201441402302');
INSERT INTO `t_log` VALUES ('38', '登录系统', '系统登录', '2018-02-10 19:56:02', '201441402302');
INSERT INTO `t_log` VALUES ('39', '登录系统', '系统登录', '2018-02-10 19:56:51', '201441402302');
INSERT INTO `t_log` VALUES ('40', '登录系统', '系统登录', '2018-02-10 20:00:11', '201441402302');
INSERT INTO `t_log` VALUES ('41', '登录系统', '系统登录', '2018-02-10 20:11:15', '201441402302');
INSERT INTO `t_log` VALUES ('42', '查找所有数据并分页排序', '模块管理', '2018-02-10 22:05:02', '201441402302');
INSERT INTO `t_log` VALUES ('43', '查找多条数据并分页排序', '部门管理', '2018-02-10 22:05:04', '201441402302');
INSERT INTO `t_log` VALUES ('44', '查找多条数据并分页排序', '部门管理', '2018-02-10 22:10:14', '201441402302');
INSERT INTO `t_log` VALUES ('45', '登录系统', '系统登录', '2018-02-10 22:10:48', '201441402302');
INSERT INTO `t_log` VALUES ('46', '查找多条数据并分页排序', '部门管理', '2018-02-10 22:10:52', '201441402302');
INSERT INTO `t_log` VALUES ('47', '查找多条数据并分页排序', '部门管理', '2018-02-10 22:10:59', '201441402302');
INSERT INTO `t_log` VALUES ('48', '登录系统', '系统登录', '2018-02-10 22:11:07', '201441402302');
INSERT INTO `t_log` VALUES ('49', '查找多条数据并分页排序', '部门管理', '2018-02-10 22:11:10', '201441402302');
INSERT INTO `t_log` VALUES ('50', '登录系统', '系统登录', '2018-02-10 22:11:51', '201441402302');
INSERT INTO `t_log` VALUES ('51', '查找多条数据并分页排序', '部门管理', '2018-02-10 22:11:54', '201441402302');
INSERT INTO `t_log` VALUES ('52', '登录系统', '系统登录', '2018-02-10 22:16:21', '201441402302');
INSERT INTO `t_log` VALUES ('53', '查找多条数据并分页排序', '部门管理', '2018-02-10 22:16:24', '201441402302');
INSERT INTO `t_log` VALUES ('54', '查找多条数据并分页排序', '部门管理', '2018-02-10 22:16:53', '201441402302');
INSERT INTO `t_log` VALUES ('55', '查找多条数据并分页排序', '部门管理', '2018-02-10 22:16:55', '201441402302');
INSERT INTO `t_log` VALUES ('56', '查找多条数据并分页排序', '部门管理', '2018-02-10 22:55:40', '201441402302');
INSERT INTO `t_log` VALUES ('57', '查找多条数据并分页排序', '部门管理', '2018-02-10 22:55:54', '201441402302');
INSERT INTO `t_log` VALUES ('58', '查找所有数据并分页排序', '模块管理', '2018-02-10 22:56:01', '201441402302');
INSERT INTO `t_log` VALUES ('59', '查找所有数据并分页排序', '模块管理', '2018-02-10 23:25:56', '201441402302');
INSERT INTO `t_log` VALUES ('60', '登录系统', '系统登录', '2018-02-10 23:27:49', '201441402302');
INSERT INTO `t_log` VALUES ('61', '登录系统', '系统登录', '2018-02-10 23:28:15', '201441402302');
INSERT INTO `t_log` VALUES ('62', '查找所有数据并分页排序', '模块管理', '2018-02-10 23:28:18', '201441402302');
INSERT INTO `t_log` VALUES ('63', '查找所有数据并分页排序', '模块管理', '2018-02-10 23:28:50', '201441402302');
INSERT INTO `t_log` VALUES ('64', '查找多条数据并分页排序', '部门管理', '2018-02-11 22:21:49', '2094');
INSERT INTO `t_log` VALUES ('65', '登录系统', '系统登录', '2018-02-11 22:29:39', '201441402302');
INSERT INTO `t_log` VALUES ('66', '登录系统', '系统登录', '2018-02-11 22:34:59', '201441402302');
INSERT INTO `t_log` VALUES ('67', '登录系统', '系统登录', '2018-02-11 23:19:22', '201441402302');
INSERT INTO `t_log` VALUES ('68', '登录系统', '系统登录', '2018-02-11 23:20:04', '201441402302');
INSERT INTO `t_log` VALUES ('69', '登录系统', '系统登录', '2018-02-23 16:19:27', '201441402302');
INSERT INTO `t_log` VALUES ('70', '登录系统', '系统登录', '2018-02-23 16:24:35', '201441402302');
INSERT INTO `t_log` VALUES ('71', '登录系统', '系统登录', '2018-02-23 16:27:29', '201441402302');
INSERT INTO `t_log` VALUES ('72', '登录系统', '系统登录', '2018-02-23 16:29:10', '201441402302');
INSERT INTO `t_log` VALUES ('73', '登录系统', '系统登录', '2018-02-23 16:33:25', '201441402302');
INSERT INTO `t_log` VALUES ('74', '登录系统', '系统登录', '2018-02-23 16:33:46', '201441402302');
INSERT INTO `t_log` VALUES ('75', '登录系统', '系统登录', '2018-02-23 16:34:57', '201441402302');
INSERT INTO `t_log` VALUES ('76', '登录系统', '系统登录', '2018-02-23 16:37:21', '201441402302');
INSERT INTO `t_log` VALUES ('77', '登录系统', '系统登录', '2018-02-23 16:38:48', '201441402302');
INSERT INTO `t_log` VALUES ('78', '登录系统', '系统登录', '2018-02-23 17:37:29', '201441402302');
INSERT INTO `t_log` VALUES ('79', '登录系统', '系统登录', '2018-02-23 17:39:50', '201441402302');
INSERT INTO `t_log` VALUES ('80', '登录系统', '系统登录', '2018-02-23 17:40:24', '201441402302');
INSERT INTO `t_log` VALUES ('81', '登录系统', '系统登录', '2018-02-23 17:43:24', '201441402302');
INSERT INTO `t_log` VALUES ('82', '登录系统', '系统登录', '2018-02-23 17:44:49', '201441402302');
INSERT INTO `t_log` VALUES ('83', '登录系统', '系统登录', '2018-02-23 17:45:34', '201441402302');
INSERT INTO `t_log` VALUES ('84', '登录系统', '系统登录', '2018-02-23 17:46:01', '201441402302');
INSERT INTO `t_log` VALUES ('85', '登录系统', '系统登录', '2018-02-23 17:47:47', '201441402302');
INSERT INTO `t_log` VALUES ('86', '登录系统', '系统登录', '2018-02-23 17:50:49', '201441402302');
INSERT INTO `t_log` VALUES ('87', '登录系统', '系统登录', '2018-02-23 17:52:24', '201441402302');
INSERT INTO `t_log` VALUES ('88', '登录系统', '系统登录', '2018-02-23 17:54:02', '201441402302');
INSERT INTO `t_log` VALUES ('89', '登录系统', '系统登录', '2018-02-23 17:54:28', '201441402302');
INSERT INTO `t_log` VALUES ('90', '登录系统', '系统登录', '2018-02-23 17:54:52', '201441402302');
INSERT INTO `t_log` VALUES ('91', '登录系统', '系统登录', '2018-02-23 17:55:34', '201441402302');
INSERT INTO `t_log` VALUES ('92', '登录系统', '系统登录', '2018-02-23 17:56:48', '201441402302');
INSERT INTO `t_log` VALUES ('93', '登录系统', '系统登录', '2018-02-23 17:58:55', '201441402302');
INSERT INTO `t_log` VALUES ('94', '登录系统', '系统登录', '2018-02-23 17:59:00', '201441402302');
INSERT INTO `t_log` VALUES ('95', '登录系统', '系统登录', '2018-02-23 17:59:11', '201441402302');
INSERT INTO `t_log` VALUES ('96', '登录系统', '系统登录', '2018-02-23 18:00:37', '201441402302');
INSERT INTO `t_log` VALUES ('97', '登录系统', '系统登录', '2018-02-23 18:03:05', '201441402302');
INSERT INTO `t_log` VALUES ('98', '登录系统', '系统登录', '2018-02-23 18:03:44', '201441402302');
INSERT INTO `t_log` VALUES ('99', '登录系统', '系统登录', '2018-02-23 18:04:07', '201441402302');
INSERT INTO `t_log` VALUES ('100', '登录系统', '系统登录', '2018-02-23 18:08:16', '201441402302');
INSERT INTO `t_log` VALUES ('101', '登录系统', '系统登录', '2018-02-23 18:08:49', '201441402302');
INSERT INTO `t_log` VALUES ('102', '登录系统', '系统登录', '2018-02-23 18:09:51', '201441402302');
INSERT INTO `t_log` VALUES ('103', '登录系统', '系统登录', '2018-02-23 18:11:13', '201441402302');
INSERT INTO `t_log` VALUES ('104', '登录系统', '系统登录', '2018-02-23 18:11:55', '201441402302');
INSERT INTO `t_log` VALUES ('105', '登录系统', '系统登录', '2018-02-23 18:12:14', '201441402302');
INSERT INTO `t_log` VALUES ('106', '登录系统', '系统登录', '2018-02-23 18:12:40', '201441402302');
INSERT INTO `t_log` VALUES ('107', '登录系统', '系统登录', '2018-02-23 18:14:25', '201441402302');
INSERT INTO `t_log` VALUES ('108', '登录系统', '系统登录', '2018-02-23 18:15:02', '201441402302');
INSERT INTO `t_log` VALUES ('109', '登录系统', '系统登录', '2018-02-23 18:16:23', '201441402302');
INSERT INTO `t_log` VALUES ('110', '登录系统', '系统登录', '2018-02-23 18:16:43', '201441402302');
INSERT INTO `t_log` VALUES ('111', '登录系统', '系统登录', '2018-02-23 18:17:28', '201441402302');
INSERT INTO `t_log` VALUES ('112', '登录系统', '系统登录', '2018-02-23 18:29:47', '201441402302');
INSERT INTO `t_log` VALUES ('113', '登录系统', '系统登录', '2018-03-03 15:28:29', '312');
INSERT INTO `t_log` VALUES ('114', '登录系统', '系统登录', '2018-03-03 15:35:02', '312');
INSERT INTO `t_log` VALUES ('115', '登录系统', '系统登录', '2018-03-03 22:53:11', '312');
INSERT INTO `t_log` VALUES ('116', '登录系统', '系统登录', '2018-03-03 22:59:21', '3213');
INSERT INTO `t_log` VALUES ('117', '登录系统', '系统登录', '2018-03-03 23:01:31', '3213');
INSERT INTO `t_log` VALUES ('118', '登录系统', '系统登录', '2018-03-03 23:01:56', '3213');
INSERT INTO `t_log` VALUES ('119', '登录系统', '系统登录', '2018-03-03 23:02:11', '3213');
INSERT INTO `t_log` VALUES ('120', '登录系统', '系统登录', '2018-03-03 23:02:27', '3213');
INSERT INTO `t_log` VALUES ('121', '登录系统', '系统登录', '2018-03-03 23:02:50', '3213');
INSERT INTO `t_log` VALUES ('122', '查找多条数据并分页排序', '部门管理', '2018-03-05 20:24:14', '3213');
INSERT INTO `t_log` VALUES ('123', '查找多条数据并分页排序', '部门管理', '2018-03-05 20:31:06', '3213');
INSERT INTO `t_log` VALUES ('124', '查找所有数据并分页排序', '模块管理', '2018-03-05 20:31:20', '3213');
INSERT INTO `t_log` VALUES ('125', '查找所有数据并分页排序', '模块管理', '2018-03-05 20:42:38', '3213');
INSERT INTO `t_log` VALUES ('126', '查找所有数据并分页排序', '模块管理', '2018-03-05 20:42:42', '3213');
INSERT INTO `t_log` VALUES ('127', '查找所有数据并分页排序', '模块管理', '2018-03-05 20:42:52', '3213');
INSERT INTO `t_log` VALUES ('128', '查找所有数据并分页排序', '模块管理', '2018-03-05 20:43:09', '3213');
INSERT INTO `t_log` VALUES ('129', '查找多条数据并分页排序', '部门管理', '2018-03-05 20:43:14', '3213');
INSERT INTO `t_log` VALUES ('130', '登录系统', '系统登录', '2018-03-05 20:49:07', '3213');
INSERT INTO `t_log` VALUES ('131', '登录系统', '系统登录', '2018-03-05 20:50:42', '3213');
INSERT INTO `t_log` VALUES ('132', '登录系统', '系统登录', '2018-03-05 20:53:18', '3213');
INSERT INTO `t_log` VALUES ('133', '登录系统', '系统登录', '2018-03-05 20:53:34', '3213');
INSERT INTO `t_log` VALUES ('134', '登录系统', '系统登录', '2018-03-05 21:05:15', '3213');
INSERT INTO `t_log` VALUES ('135', '登录系统', '系统登录', '2018-03-05 21:06:04', '3213');
INSERT INTO `t_log` VALUES ('136', '登录系统', '系统登录', '2018-03-05 21:08:56', '3213');
INSERT INTO `t_log` VALUES ('137', '登录系统', '系统登录', '2018-03-05 21:09:16', '3213');
INSERT INTO `t_log` VALUES ('138', '登录系统', '系统登录', '2018-03-05 21:10:18', '3213');
INSERT INTO `t_log` VALUES ('139', '登录系统', '系统登录', '2018-03-05 21:11:21', '3213');
INSERT INTO `t_log` VALUES ('140', '登录系统', '系统登录', '2018-03-05 21:16:47', '3213');
INSERT INTO `t_log` VALUES ('141', '查找多条数据并分页排序', '部门管理', '2018-03-05 21:17:03', '3213');
INSERT INTO `t_log` VALUES ('142', '登录系统', '系统登录', '2018-03-05 21:31:27', '3213');
INSERT INTO `t_log` VALUES ('143', '登录系统', '系统登录', '2018-03-05 21:32:59', '3213');
INSERT INTO `t_log` VALUES ('144', '登录系统', '系统登录', '2018-03-05 21:35:00', '3213');
INSERT INTO `t_log` VALUES ('145', '登录系统', '系统登录', '2018-03-05 21:35:39', '3213');
INSERT INTO `t_log` VALUES ('146', '登录系统', '系统登录', '2018-03-05 21:37:28', '3213');
INSERT INTO `t_log` VALUES ('147', '登录系统', '系统登录', '2018-03-05 21:42:27', '3213');
INSERT INTO `t_log` VALUES ('148', '登录系统', '系统登录', '2018-03-05 21:43:45', '3213');
INSERT INTO `t_log` VALUES ('149', '登录系统', '系统登录', '2018-03-05 21:45:34', '3213');
INSERT INTO `t_log` VALUES ('150', '登录系统', '系统登录', '2018-03-05 21:46:39', '3213');
INSERT INTO `t_log` VALUES ('151', '登录系统', '系统登录', '2018-03-05 21:54:35', '3213');
INSERT INTO `t_log` VALUES ('152', '登录系统', '系统登录', '2018-03-05 21:56:02', '3213');
INSERT INTO `t_log` VALUES ('153', '登录系统', '系统登录', '2018-03-05 21:56:21', '3213');
INSERT INTO `t_log` VALUES ('154', '登录系统', '系统登录', '2018-03-05 21:56:48', '3213');
INSERT INTO `t_log` VALUES ('155', '登录系统', '系统登录', '2018-03-05 21:57:02', '3213');
INSERT INTO `t_log` VALUES ('156', '登录系统', '系统登录', '2018-03-05 21:59:16', '3213');
INSERT INTO `t_log` VALUES ('157', '登录系统', '系统登录', '2018-03-05 22:00:03', '3213');
INSERT INTO `t_log` VALUES ('158', '登录系统', '系统登录', '2018-03-05 22:02:25', '3213');
INSERT INTO `t_log` VALUES ('159', '登录系统', '系统登录', '2018-03-05 22:07:06', '3213');
INSERT INTO `t_log` VALUES ('160', '登录系统', '系统登录', '2018-03-05 22:09:09', '3213');
INSERT INTO `t_log` VALUES ('161', '登录系统', '系统登录', '2018-03-05 22:09:31', '3213');
INSERT INTO `t_log` VALUES ('162', '登录系统', '系统登录', '2018-03-05 22:10:00', '3213');
INSERT INTO `t_log` VALUES ('163', '登录系统', '系统登录', '2018-03-05 22:12:19', '3213');
INSERT INTO `t_log` VALUES ('164', '登录系统', '系统登录', '2018-03-05 22:18:47', '3213');
INSERT INTO `t_log` VALUES ('165', '登录系统', '系统登录', '2018-03-05 22:19:21', '3213');
INSERT INTO `t_log` VALUES ('166', '登录系统', '系统登录', '2018-03-05 22:19:57', '3213');
INSERT INTO `t_log` VALUES ('167', '登录系统', '系统登录', '2018-03-05 22:21:37', '3213');
INSERT INTO `t_log` VALUES ('168', '登录系统', '系统登录', '2018-03-05 22:26:57', '3213');
INSERT INTO `t_log` VALUES ('169', '登录系统', '系统登录', '2018-03-05 22:29:21', '3213');
INSERT INTO `t_log` VALUES ('170', '登录系统', '系统登录', '2018-03-05 22:29:46', '3213');
INSERT INTO `t_log` VALUES ('171', '登录系统', '系统登录', '2018-03-05 22:30:44', '3213');
INSERT INTO `t_log` VALUES ('172', '登录系统', '系统登录', '2018-03-05 22:33:00', '3213');
INSERT INTO `t_log` VALUES ('173', '登录系统', '系统登录', '2018-03-05 22:33:19', '3213');
INSERT INTO `t_log` VALUES ('174', '登录系统', '系统登录', '2018-03-05 22:34:03', '3213');
INSERT INTO `t_log` VALUES ('175', '登录系统', '系统登录', '2018-03-05 22:34:53', '3213');
INSERT INTO `t_log` VALUES ('176', '登录系统', '系统登录', '2018-03-05 22:36:31', '3213');
INSERT INTO `t_log` VALUES ('177', '登录系统', '系统登录', '2018-03-05 22:48:54', '3213');
INSERT INTO `t_log` VALUES ('178', '登录系统', '系统登录', '2018-03-05 22:49:36', '3213');
INSERT INTO `t_log` VALUES ('179', '登录系统', '系统登录', '2018-03-05 22:49:58', '3213');
INSERT INTO `t_log` VALUES ('180', '登录系统', '系统登录', '2018-03-05 22:53:04', '3213');
INSERT INTO `t_log` VALUES ('181', '登录系统', '系统登录', '2018-03-05 22:55:59', '3213');
INSERT INTO `t_log` VALUES ('182', '登录系统', '系统登录', '2018-03-05 22:57:35', '3213');
INSERT INTO `t_log` VALUES ('183', '登录系统', '系统登录', '2018-03-05 23:00:51', '3213');
INSERT INTO `t_log` VALUES ('184', '登录系统', '系统登录', '2018-03-05 23:02:54', '3213');
INSERT INTO `t_log` VALUES ('185', '登录系统', '系统登录', '2018-03-05 23:03:33', '3213');
INSERT INTO `t_log` VALUES ('186', '登录系统', '系统登录', '2018-03-05 23:04:29', '3213');
INSERT INTO `t_log` VALUES ('187', '登录系统', '系统登录', '2018-03-05 23:09:19', '3213');
INSERT INTO `t_log` VALUES ('188', '登录系统', '系统登录', '2018-03-05 23:10:05', '3213');
INSERT INTO `t_log` VALUES ('189', '登录系统', '系统登录', '2018-03-05 23:11:19', '3213');
INSERT INTO `t_log` VALUES ('190', '登录系统', '系统登录', '2018-03-05 23:13:08', '3213');
INSERT INTO `t_log` VALUES ('191', '登录系统', '系统登录', '2018-03-05 23:15:08', '3213');
INSERT INTO `t_log` VALUES ('192', '登录系统', '系统登录', '2018-03-05 23:20:33', '3213');
INSERT INTO `t_log` VALUES ('193', '登录系统', '系统登录', '2018-03-05 23:22:00', '3213');
INSERT INTO `t_log` VALUES ('194', '登录系统', '系统登录', '2018-03-05 23:23:09', '3213');
INSERT INTO `t_log` VALUES ('195', '登录系统', '系统登录', '2018-03-05 23:24:26', '3213');
INSERT INTO `t_log` VALUES ('196', '登录系统', '系统登录', '2018-03-05 23:25:05', '3213');
INSERT INTO `t_log` VALUES ('197', '登录系统', '系统登录', '2018-03-05 23:26:51', '3213');
INSERT INTO `t_log` VALUES ('198', '登录系统', '系统登录', '2018-03-05 23:28:27', '3213');
INSERT INTO `t_log` VALUES ('199', '登录系统', '系统登录', '2018-03-05 23:29:45', '3213');
INSERT INTO `t_log` VALUES ('200', '查找多条数据并分页排序', '部门管理', '2018-03-18 19:05:24', '123');
INSERT INTO `t_log` VALUES ('201', '登录系统', '系统登录', '2018-03-20 14:26:58', '123');
INSERT INTO `t_log` VALUES ('202', '登录系统', '系统登录', '2018-03-20 14:27:38', '123');
INSERT INTO `t_log` VALUES ('203', '登录系统', '系统登录', '2018-03-20 14:33:29', '123');
INSERT INTO `t_log` VALUES ('204', '登录系统', '系统登录', '2018-03-20 15:16:13', '123');
INSERT INTO `t_log` VALUES ('205', '登录系统', '系统登录', '2018-03-20 15:16:54', '123');
INSERT INTO `t_log` VALUES ('206', '登录系统', '系统登录', '2018-03-20 15:17:44', '123');
INSERT INTO `t_log` VALUES ('207', '登录系统', '系统登录', '2018-03-20 15:18:18', '123');
INSERT INTO `t_log` VALUES ('208', '登录系统', '系统登录', '2018-03-20 15:18:35', '123');
INSERT INTO `t_log` VALUES ('209', '登录系统', '系统登录', '2018-03-20 15:28:27', '123');
INSERT INTO `t_log` VALUES ('210', '登录系统', '系统登录', '2018-03-20 15:29:55', '123');
INSERT INTO `t_log` VALUES ('211', '登录系统', '系统登录', '2018-03-20 15:30:00', '123');
INSERT INTO `t_log` VALUES ('212', '登录系统', '系统登录', '2018-03-20 15:51:30', '123');
INSERT INTO `t_log` VALUES ('213', '登录系统', '系统登录', '2018-03-20 15:51:42', '123');
INSERT INTO `t_log` VALUES ('214', '登录系统', '系统登录', '2018-03-20 15:52:19', '123');
INSERT INTO `t_log` VALUES ('215', '登录系统', '系统登录', '2018-03-20 15:53:52', '123');
INSERT INTO `t_log` VALUES ('216', '登录系统', '系统登录', '2018-03-20 15:54:48', '123');
INSERT INTO `t_log` VALUES ('217', '登录系统', '系统登录', '2018-03-20 15:55:51', '123');
INSERT INTO `t_log` VALUES ('218', '登录系统', '系统登录', '2018-03-20 15:57:25', '123');
INSERT INTO `t_log` VALUES ('219', '登录系统', '系统登录', '2018-03-20 15:57:54', '123');
INSERT INTO `t_log` VALUES ('220', '登录系统', '系统登录', '2018-03-20 16:01:39', '123');
INSERT INTO `t_log` VALUES ('221', '登录系统', '系统登录', '2018-03-20 16:02:05', '123');
INSERT INTO `t_log` VALUES ('222', '登录系统', '系统登录', '2018-03-20 16:03:12', '123');
INSERT INTO `t_log` VALUES ('223', '登录系统', '系统登录', '2018-03-20 16:03:38', '123');
INSERT INTO `t_log` VALUES ('224', '登录系统', '系统登录', '2018-03-20 16:07:00', '123');
INSERT INTO `t_log` VALUES ('225', '登录系统', '系统登录', '2018-03-20 16:17:56', '123');
INSERT INTO `t_log` VALUES ('226', '登录系统', '系统登录', '2018-03-20 16:20:55', '123');
INSERT INTO `t_log` VALUES ('227', '登录系统', '系统登录', '2018-03-20 16:25:08', '123');
INSERT INTO `t_log` VALUES ('228', '查找所有数据并分页排序', '模块管理', '2018-03-20 23:06:00', '123');
INSERT INTO `t_log` VALUES ('229', '查找多条数据并分页排序', '部门管理', '2018-03-20 23:06:07', '123');
INSERT INTO `t_log` VALUES ('230', '查找多条数据并分页排序', '部门管理', '2018-03-20 23:06:14', '123');
INSERT INTO `t_log` VALUES ('231', '查找所有数据并分页排序', '模块管理', '2018-03-20 23:06:18', '123');
INSERT INTO `t_log` VALUES ('232', '查找所有数据并分页排序', '模块管理', '2018-03-20 23:09:56', '123');
INSERT INTO `t_log` VALUES ('233', '查找所有数据并分页排序', '模块管理', '2018-03-20 23:12:28', '123');
INSERT INTO `t_log` VALUES ('234', '查找所有数据并分页排序', '模块管理', '2018-03-20 23:14:48', '123');
INSERT INTO `t_log` VALUES ('235', '查找多条数据并分页排序', '部门管理', '2018-03-20 23:15:22', '123');
INSERT INTO `t_log` VALUES ('236', '登录系统', '系统登录', '2018-03-20 23:21:29', '123');
INSERT INTO `t_log` VALUES ('237', '登录系统', '系统登录', '2018-03-20 23:37:35', '123');
INSERT INTO `t_log` VALUES ('238', '查找多条数据并分页排序', '部门管理', '2018-03-20 23:41:47', '123');
INSERT INTO `t_log` VALUES ('239', '查找所有数据并分页排序', '模块管理', '2018-03-20 23:41:51', '123');
INSERT INTO `t_log` VALUES ('240', '查找所有数据并分页排序', '模块管理', '2018-03-20 23:42:09', '123');
INSERT INTO `t_log` VALUES ('241', '查找多条数据并分页排序', '部门管理', '2018-03-20 23:48:10', '123');
INSERT INTO `t_log` VALUES ('242', '查找多条数据并分页排序', '部门管理', '2018-03-20 23:48:15', '123');
INSERT INTO `t_log` VALUES ('243', '查找所有数据并分页排序', '模块管理', '2018-03-20 23:48:17', '123');
INSERT INTO `t_log` VALUES ('244', '查找多条数据并分页排序', '部门管理', '2018-03-21 00:01:07', '123');
INSERT INTO `t_log` VALUES ('245', '查找多条数据并分页排序', '部门管理', '2018-03-21 00:01:10', '123');
INSERT INTO `t_log` VALUES ('246', '查找所有数据并分页排序', '模块管理', '2018-03-21 00:01:11', '123');
INSERT INTO `t_log` VALUES ('247', '登录系统', '系统登录', '2018-03-22 09:53:07', '123');
INSERT INTO `t_log` VALUES ('248', '查找所有数据并分页排序', '模块管理', '2018-03-22 09:53:11', '123');
INSERT INTO `t_log` VALUES ('249', '登录系统', '系统登录', '2018-03-22 10:02:07', '123');
INSERT INTO `t_log` VALUES ('250', '查找所有数据并分页排序', '模块管理', '2018-03-22 10:02:09', '123');
INSERT INTO `t_log` VALUES ('251', '登录系统', '系统登录', '2018-03-22 10:02:31', '123');
INSERT INTO `t_log` VALUES ('252', '查找所有数据并分页排序', '模块管理', '2018-03-22 10:02:34', '123');
INSERT INTO `t_log` VALUES ('253', '登录系统', '系统登录', '2018-03-22 10:03:16', '123');
INSERT INTO `t_log` VALUES ('254', '查找所有数据并分页排序', '模块管理', '2018-03-22 10:03:19', '123');
INSERT INTO `t_log` VALUES ('255', '查找所有数据并分页排序', '模块管理', '2018-03-22 10:05:06', '123');
INSERT INTO `t_log` VALUES ('256', '查找多条数据并分页排序', '部门管理', '2018-03-22 14:34:23', '123');
INSERT INTO `t_log` VALUES ('257', '查找多条数据并分页排序', '部门管理', '2018-03-22 14:34:44', '123');
INSERT INTO `t_log` VALUES ('258', '查找多条数据并分页排序', '部门管理', '2018-03-22 14:34:45', '123');
INSERT INTO `t_log` VALUES ('259', '查找多条数据并分页排序', '部门管理', '2018-03-22 22:06:33', '123');
INSERT INTO `t_log` VALUES ('260', '查找多条数据并分页排序', '部门管理', '2018-03-22 22:06:33', '123');
INSERT INTO `t_log` VALUES ('261', '登录系统', '系统登录', '2018-03-22 23:05:23', '123');
INSERT INTO `t_log` VALUES ('262', '登录系统', '系统登录', '2018-03-22 23:06:17', '123');
INSERT INTO `t_log` VALUES ('263', '登录系统', '系统登录', '2018-03-22 23:06:44', '123');
INSERT INTO `t_log` VALUES ('264', '登录系统', '系统登录', '2018-03-24 10:42:06', '123');
INSERT INTO `t_log` VALUES ('265', '登录系统', '系统登录', '2018-03-24 10:45:53', '123');
INSERT INTO `t_log` VALUES ('266', '登录系统', '系统登录', '2018-03-24 10:50:20', '123');
INSERT INTO `t_log` VALUES ('267', '登录系统', '系统登录', '2018-03-24 10:56:23', '123');
INSERT INTO `t_log` VALUES ('268', '登录系统', '系统登录', '2018-03-24 19:34:38', '123');
INSERT INTO `t_log` VALUES ('269', '登录系统', '系统登录', '2018-03-24 19:38:32', '123');
INSERT INTO `t_log` VALUES ('270', '登录系统', '系统登录', '2018-03-24 19:40:41', '123');
INSERT INTO `t_log` VALUES ('271', '登录系统', '系统登录', '2018-03-24 19:42:01', '123');
INSERT INTO `t_log` VALUES ('272', '登录系统', '系统登录', '2018-03-24 19:46:07', '123');
INSERT INTO `t_log` VALUES ('273', '登录系统', '系统登录', '2018-03-24 19:50:27', '123');
INSERT INTO `t_log` VALUES ('274', '登录系统', '系统登录', '2018-03-24 19:55:13', '123');
INSERT INTO `t_log` VALUES ('275', '登录系统', '系统登录', '2018-03-24 19:55:23', '123');
INSERT INTO `t_log` VALUES ('276', '登录系统', '系统登录', '2018-03-24 20:00:45', '123');
INSERT INTO `t_log` VALUES ('277', '登录系统', '系统登录', '2018-03-24 20:30:21', '123');
INSERT INTO `t_log` VALUES ('278', '登录系统', '系统登录', '2018-03-24 20:34:05', '123');
INSERT INTO `t_log` VALUES ('279', '登录系统', '系统登录', '2018-03-24 20:36:19', '123');
INSERT INTO `t_log` VALUES ('280', '查找多条数据并分页排序', '部门管理', '2018-03-24 20:36:25', '123');
INSERT INTO `t_log` VALUES ('281', '登录系统', '系统登录', '2018-03-24 20:47:06', '123');
INSERT INTO `t_log` VALUES ('282', '登录系统', '系统登录', '2018-03-24 20:59:39', '123');
INSERT INTO `t_log` VALUES ('283', '登录系统', '系统登录', '2018-03-24 21:02:24', '123');
INSERT INTO `t_log` VALUES ('284', '登录系统', '系统登录', '2018-03-24 22:36:32', '20197');
INSERT INTO `t_log` VALUES ('285', '查找多条数据并分页排序', '部门管理', '2018-03-24 22:43:57', '20200');
INSERT INTO `t_log` VALUES ('286', '登录系统', '系统登录', '2018-03-24 23:10:32', '123');
INSERT INTO `t_log` VALUES ('287', '登录系统', '系统登录', '2018-03-24 23:11:29', '123');
INSERT INTO `t_log` VALUES ('288', '登录系统', '系统登录', '2018-03-24 23:11:46', '123');
INSERT INTO `t_log` VALUES ('289', '登录系统', '系统登录', '2018-03-24 23:18:31', '123');
INSERT INTO `t_log` VALUES ('290', '登录系统', '系统登录', '2018-03-24 23:19:06', '123');
INSERT INTO `t_log` VALUES ('291', '登录系统', '系统登录', '2018-03-24 23:42:01', '66');
INSERT INTO `t_log` VALUES ('292', '登录系统', '系统登录', '2018-03-24 23:43:29', '123');
INSERT INTO `t_log` VALUES ('293', '登录系统', '系统登录', '2018-03-24 23:49:40', '123');
INSERT INTO `t_log` VALUES ('294', '登录系统', '系统登录', '2018-03-24 23:51:23', '123');
INSERT INTO `t_log` VALUES ('295', '登录系统', '系统登录', '2018-03-24 23:52:48', '123');
INSERT INTO `t_log` VALUES ('296', '登录系统', '系统登录', '2018-03-24 23:58:21', '0');
INSERT INTO `t_log` VALUES ('297', '登录系统', '系统登录', '2018-03-25 00:15:43', '0');
INSERT INTO `t_log` VALUES ('298', '查找多条数据并分页排序', '部门管理', '2018-03-25 00:18:08', '0');
INSERT INTO `t_log` VALUES ('299', '查找多条数据并分页排序', '部门管理', '2018-03-25 00:18:45', '0');
INSERT INTO `t_log` VALUES ('300', '查找多条数据并分页排序', '部门管理', '2018-03-25 00:45:35', '0');
INSERT INTO `t_log` VALUES ('301', '查找多条数据并分页排序', '部门管理', '2018-03-25 00:48:40', '0');
INSERT INTO `t_log` VALUES ('302', '查找多条数据并分页排序', '部门管理', '2018-03-25 00:48:51', '0');
INSERT INTO `t_log` VALUES ('303', '查找多条数据并分页排序', '部门管理', '2018-03-25 00:50:07', '0');
INSERT INTO `t_log` VALUES ('304', '查找多条数据并分页排序', '部门管理', '2018-03-25 00:50:14', '0');
INSERT INTO `t_log` VALUES ('305', '查找多条数据并分页排序', '部门管理', '2018-03-25 00:52:00', '0');
INSERT INTO `t_log` VALUES ('306', '查找多条数据并分页排序', '部门管理', '2018-03-25 00:52:32', '0');
INSERT INTO `t_log` VALUES ('307', '查找所有数据并分页排序', '模块管理', '2018-03-25 00:52:38', '0');
INSERT INTO `t_log` VALUES ('308', '查找多条数据并分页排序', '部门管理', '2018-03-25 10:50:11', '123');
INSERT INTO `t_log` VALUES ('309', '查找所有数据并分页排序', '模块管理', '2018-03-25 10:50:52', '123');
INSERT INTO `t_log` VALUES ('310', '查找所有数据并分页排序', '模块管理', '2018-03-25 11:02:51', '123');
INSERT INTO `t_log` VALUES ('311', '查找所有数据并分页排序', '模块管理', '2018-03-25 11:03:38', '123');
INSERT INTO `t_log` VALUES ('312', '查找所有数据并分页排序', '模块管理', '2018-03-25 11:06:24', '123');
INSERT INTO `t_log` VALUES ('313', '登录系统', '系统登录', '2018-03-25 11:09:53', '123');
INSERT INTO `t_log` VALUES ('314', '查找所有数据并分页排序', '模块管理', '2018-03-25 11:09:56', '123');
INSERT INTO `t_log` VALUES ('315', '查找所有数据并分页排序', '模块管理', '2018-03-25 11:13:45', '123');
INSERT INTO `t_log` VALUES ('316', '查找所有数据并分页排序', '模块管理', '2018-03-25 11:14:55', '123');
INSERT INTO `t_log` VALUES ('317', '查找所有数据并分页排序', '模块管理', '2018-03-25 11:15:43', '123');
INSERT INTO `t_log` VALUES ('318', '查找所有数据并分页排序', '模块管理', '2018-03-25 11:17:35', '123');
INSERT INTO `t_log` VALUES ('319', '查找所有数据并分页排序', '模块管理', '2018-03-25 11:22:17', '123');
INSERT INTO `t_log` VALUES ('320', '查找所有数据并分页排序', '模块管理', '2018-03-25 11:23:33', '123');
INSERT INTO `t_log` VALUES ('321', '登录系统', '系统登录', '2018-03-25 16:29:33', '123');
INSERT INTO `t_log` VALUES ('322', '登录系统', '系统登录', '2018-03-25 16:30:27', '123');
INSERT INTO `t_log` VALUES ('323', '查找多条数据并分页排序', '部门管理', '2018-03-25 20:24:06', '0');
INSERT INTO `t_log` VALUES ('324', '查找多条数据并分页排序', '部门管理', '2018-03-25 20:24:16', '0');
INSERT INTO `t_log` VALUES ('325', '查找所有数据并分页排序', '模块管理', '2018-03-25 20:24:21', '0');
INSERT INTO `t_log` VALUES ('326', '查找多条数据并分页排序', '部门管理', '2018-03-25 20:28:07', '0');
INSERT INTO `t_log` VALUES ('327', '查找所有数据并分页排序', '模块管理', '2018-03-25 20:28:08', '0');
INSERT INTO `t_log` VALUES ('328', '查找所有数据并分页排序', '模块管理', '2018-03-25 22:52:16', '201441402302');
INSERT INTO `t_log` VALUES ('329', '查找所有数据并分页排序', '模块管理', '2018-03-25 22:55:02', '201441402302');
INSERT INTO `t_log` VALUES ('330', '查找所有数据并分页排序', '模块管理', '2018-03-25 22:55:23', '201441402302');
INSERT INTO `t_log` VALUES ('331', '查找所有数据并分页排序', '模块管理', '2018-03-25 22:55:25', '201441402302');
INSERT INTO `t_log` VALUES ('332', '查找所有数据并分页排序', '模块管理', '2018-03-25 22:57:42', '201441402302');
INSERT INTO `t_log` VALUES ('333', '查找所有数据并分页排序', '模块管理', '2018-03-25 22:57:47', '201441402302');
INSERT INTO `t_log` VALUES ('334', '登录系统', '系统登录', '2018-03-25 22:57:50', '201441402302');
INSERT INTO `t_log` VALUES ('335', '查找所有数据并分页排序', '模块管理', '2018-03-25 22:57:53', '201441402302');
INSERT INTO `t_log` VALUES ('336', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:01:35', '201441402302');
INSERT INTO `t_log` VALUES ('337', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:04:07', '201441402302');
INSERT INTO `t_log` VALUES ('338', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:05:16', '201441402302');
INSERT INTO `t_log` VALUES ('339', '登录系统', '系统登录', '2018-03-25 23:05:26', '201441402302');
INSERT INTO `t_log` VALUES ('340', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:05:30', '201441402302');
INSERT INTO `t_log` VALUES ('341', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:06:11', '201441402302');
INSERT INTO `t_log` VALUES ('342', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:09:51', '201441402302');
INSERT INTO `t_log` VALUES ('343', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:11:32', '201441402302');
INSERT INTO `t_log` VALUES ('344', '登录系统', '系统登录', '2018-03-25 23:13:10', '201441402302');
INSERT INTO `t_log` VALUES ('345', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:13:12', '201441402302');
INSERT INTO `t_log` VALUES ('346', '登录系统', '系统登录', '2018-03-25 23:13:40', '201441402302');
INSERT INTO `t_log` VALUES ('347', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:13:43', '201441402302');
INSERT INTO `t_log` VALUES ('348', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:14:51', '201441402302');
INSERT INTO `t_log` VALUES ('349', '登录系统', '系统登录', '2018-03-25 23:15:41', '201441402302');
INSERT INTO `t_log` VALUES ('350', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:15:43', '201441402302');
INSERT INTO `t_log` VALUES ('351', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:16:18', '201441402302');
INSERT INTO `t_log` VALUES ('352', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:16:50', '201441402302');
INSERT INTO `t_log` VALUES ('353', '登录系统', '系统登录', '2018-03-25 23:17:48', '201441402302');
INSERT INTO `t_log` VALUES ('354', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:17:51', '201441402302');
INSERT INTO `t_log` VALUES ('355', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:18:29', '201441402302');
INSERT INTO `t_log` VALUES ('356', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:18:40', '201441402302');
INSERT INTO `t_log` VALUES ('357', '登录系统', '系统登录', '2018-03-25 23:19:51', '201441402302');
INSERT INTO `t_log` VALUES ('358', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:19:54', '201441402302');
INSERT INTO `t_log` VALUES ('359', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:20:20', '201441402302');
INSERT INTO `t_log` VALUES ('360', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:20:33', '201441402302');
INSERT INTO `t_log` VALUES ('361', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:21:16', '201441402302');
INSERT INTO `t_log` VALUES ('362', '查找所有数据并分页排序', '模块管理', '2018-03-25 23:21:21', '201441402302');
INSERT INTO `t_log` VALUES ('363', '登录系统', '系统登录', '2018-03-26 09:36:13', '201441402302');
INSERT INTO `t_log` VALUES ('364', '登录系统', '系统登录', '2018-03-26 22:56:23', '201441402302');
INSERT INTO `t_log` VALUES ('365', '登录系统', '系统登录', '2018-03-26 22:56:35', '201441402302');
INSERT INTO `t_log` VALUES ('366', '查找多条数据并分页排序', '部门管理', '2018-03-26 22:57:30', '201441402302');
INSERT INTO `t_log` VALUES ('367', '查找多条数据并分页排序', '部门管理', '2018-03-26 22:57:41', '201441402302');
INSERT INTO `t_log` VALUES ('368', '查找多条数据并分页排序', '部门管理', '2018-03-26 22:57:54', '201441402302');
INSERT INTO `t_log` VALUES ('369', '查找多条数据并分页排序', '部门管理', '2018-03-26 22:58:14', '201441402302');
INSERT INTO `t_log` VALUES ('370', '查找多条数据并分页排序', '部门管理', '2018-03-26 22:58:48', '201441402302');
INSERT INTO `t_log` VALUES ('371', '登录系统', '系统登录', '2018-03-26 23:01:58', '201441402302');
INSERT INTO `t_log` VALUES ('372', '查找所有数据并分页排序', '模块管理', '2018-03-26 23:11:18', '201441402302');
INSERT INTO `t_log` VALUES ('373', '查找所有数据并分页排序', '模块管理', '2018-03-26 23:11:33', '201441402302');
INSERT INTO `t_log` VALUES ('374', '查找所有数据并分页排序', '模块管理', '2018-03-26 23:12:18', '201441402302');
INSERT INTO `t_log` VALUES ('375', '查找所有数据并分页排序', '模块管理', '2018-03-26 23:14:19', '201441402302');
INSERT INTO `t_log` VALUES ('376', '查找所有数据并分页排序', '模块管理', '2018-03-26 23:22:51', '201441402302');
INSERT INTO `t_log` VALUES ('377', '查找所有数据并分页排序', '模块管理', '2018-03-26 23:27:01', '201441402302');
INSERT INTO `t_log` VALUES ('378', '查找所有数据并分页排序', '模块管理', '2018-03-26 23:30:26', '201441402302');
INSERT INTO `t_log` VALUES ('379', '查找所有数据并分页排序', '模块管理', '2018-03-26 23:30:36', '201441402302');
INSERT INTO `t_log` VALUES ('380', '查找所有数据并分页排序', '模块管理', '2018-03-26 23:32:03', '201441402302');
INSERT INTO `t_log` VALUES ('381', '查找所有数据并分页排序', '模块管理', '2018-03-26 23:36:38', '201441402302');
INSERT INTO `t_log` VALUES ('382', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:29:45', '201441402302');
INSERT INTO `t_log` VALUES ('383', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:30:00', '201441402302');
INSERT INTO `t_log` VALUES ('384', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:36:46', '201441402302');
INSERT INTO `t_log` VALUES ('385', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:42:21', '201441402302');
INSERT INTO `t_log` VALUES ('386', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:42:39', '201441402302');
INSERT INTO `t_log` VALUES ('387', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:42:44', '201441402302');
INSERT INTO `t_log` VALUES ('388', '登录系统', '系统登录', '2018-03-27 10:48:01', '201441402302');
INSERT INTO `t_log` VALUES ('389', '查找多条数据并分页排序', '部门管理', '2018-03-27 10:48:04', '201441402302');
INSERT INTO `t_log` VALUES ('390', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:48:17', '201441402302');
INSERT INTO `t_log` VALUES ('391', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:48:28', '201441402302');
INSERT INTO `t_log` VALUES ('392', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:48:40', '201441402302');
INSERT INTO `t_log` VALUES ('393', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:56:36', '201441402302');
INSERT INTO `t_log` VALUES ('394', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:56:50', '201441402302');
INSERT INTO `t_log` VALUES ('395', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:56:54', '201441402302');
INSERT INTO `t_log` VALUES ('396', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:57:01', '201441402302');
INSERT INTO `t_log` VALUES ('397', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:57:04', '201441402302');
INSERT INTO `t_log` VALUES ('398', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:57:07', '201441402302');
INSERT INTO `t_log` VALUES ('399', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:57:11', '201441402302');
INSERT INTO `t_log` VALUES ('400', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:57:17', '201441402302');
INSERT INTO `t_log` VALUES ('401', '查找所有数据并分页排序', '模块管理', '2018-03-27 10:57:23', '201441402302');
INSERT INTO `t_log` VALUES ('402', '查找所有数据并分页排序', '模块管理', '2018-03-27 13:37:55', '201441402302');
INSERT INTO `t_log` VALUES ('403', '查找所有数据并分页排序', '模块管理', '2018-03-27 13:41:10', '201441402302');
INSERT INTO `t_log` VALUES ('404', '查找所有数据并分页排序', '模块管理', '2018-03-27 14:51:56', '201441402302');
INSERT INTO `t_log` VALUES ('405', '登录系统', '系统登录', '2018-03-27 22:14:42', '201441402302');
INSERT INTO `t_log` VALUES ('406', '查找所有数据并分页排序', '模块管理', '2018-03-27 22:14:45', '201441402302');
INSERT INTO `t_log` VALUES ('407', '查找所有数据并分页排序', '模块管理', '2018-03-27 22:21:02', '201441402302');
INSERT INTO `t_log` VALUES ('408', '查找所有数据并分页排序', '模块管理', '2018-03-27 22:22:25', '201441402302');
INSERT INTO `t_log` VALUES ('409', '查找所有数据并分页排序', '模块管理', '2018-03-27 22:25:31', '201441402302');
INSERT INTO `t_log` VALUES ('410', '查找所有数据并分页排序', '模块管理', '2018-03-27 23:00:54', '201441402302');
INSERT INTO `t_log` VALUES ('411', '查找所有数据并分页排序', '模块管理', '2018-03-27 23:01:43', '201441402302');
INSERT INTO `t_log` VALUES ('412', '登录系统', '系统登录', '2018-03-27 23:03:27', '201441402302');
INSERT INTO `t_log` VALUES ('413', '登录系统', '系统登录', '2018-03-27 23:03:31', '201441402302');
INSERT INTO `t_log` VALUES ('414', '查找所有数据并分页排序', '模块管理', '2018-03-27 23:03:34', '201441402302');
INSERT INTO `t_log` VALUES ('415', '登录系统', '系统登录', '2018-03-27 23:05:23', '201441402302');
INSERT INTO `t_log` VALUES ('416', '查找所有数据并分页排序', '模块管理', '2018-03-27 23:05:31', '201441402302');
INSERT INTO `t_log` VALUES ('417', '登录系统', '系统登录', '2018-03-27 23:10:42', '201441402302');
INSERT INTO `t_log` VALUES ('418', '查找所有数据并分页排序', '模块管理', '2018-03-27 23:10:46', '201441402302');
INSERT INTO `t_log` VALUES ('419', '查找所有数据并分页排序', '模块管理', '2018-03-27 23:13:16', '201441402302');
INSERT INTO `t_log` VALUES ('420', '查找所有数据并分页排序', '模块管理', '2018-03-27 23:16:19', '201441402302');
INSERT INTO `t_log` VALUES ('421', '登录系统', '系统登录', '2018-03-27 23:16:47', '201441402302');
INSERT INTO `t_log` VALUES ('422', '查找所有数据并分页排序', '模块管理', '2018-03-27 23:16:53', '201441402302');
INSERT INTO `t_log` VALUES ('423', '登录系统', '系统登录', '2018-03-27 23:17:19', '201441402302');
INSERT INTO `t_log` VALUES ('424', '查找所有数据并分页排序', '模块管理', '2018-03-27 23:17:23', '201441402302');
INSERT INTO `t_log` VALUES ('425', '查找所有数据并分页排序', '模块管理', '2018-03-28 09:48:21', '201441402302');
INSERT INTO `t_log` VALUES ('426', '查找所有数据并分页排序', '模块管理', '2018-03-28 09:55:25', '201441402302');
INSERT INTO `t_log` VALUES ('427', '查找所有数据并分页排序', '模块管理', '2018-03-28 09:56:17', '201441402302');
INSERT INTO `t_log` VALUES ('428', '登录系统', '系统登录', '2018-03-28 09:57:11', '201441402302');
INSERT INTO `t_log` VALUES ('429', '查找所有数据并分页排序', '模块管理', '2018-03-28 09:57:14', '201441402302');
INSERT INTO `t_log` VALUES ('430', '登录系统', '系统登录', '2018-03-28 09:58:19', '201441402302');
INSERT INTO `t_log` VALUES ('431', '查找所有数据并分页排序', '模块管理', '2018-03-28 09:58:22', '201441402302');
INSERT INTO `t_log` VALUES ('432', '登录系统', '系统登录', '2018-03-28 10:01:45', '201441402302');
INSERT INTO `t_log` VALUES ('433', '查找所有数据并分页排序', '模块管理', '2018-03-28 10:01:51', '201441402302');
INSERT INTO `t_log` VALUES ('434', '登录系统', '系统登录', '2018-03-28 10:04:17', '201441402302');
INSERT INTO `t_log` VALUES ('435', '查找所有数据并分页排序', '模块管理', '2018-03-28 10:04:20', '201441402302');
INSERT INTO `t_log` VALUES ('436', '查找所有数据并分页排序', '模块管理', '2018-03-28 10:07:24', '201441402302');
INSERT INTO `t_log` VALUES ('437', '查找所有数据并分页排序', '模块管理', '2018-03-28 17:31:52', '201441402302');
INSERT INTO `t_log` VALUES ('438', '登录系统', '系统登录', '2018-03-28 17:33:10', '201441402302');
INSERT INTO `t_log` VALUES ('439', '查找所有数据并分页排序', '模块管理', '2018-03-28 17:33:13', '201441402302');
INSERT INTO `t_log` VALUES ('440', '查找所有数据并分页排序', '模块管理', '2018-03-28 17:37:12', '201441402302');
INSERT INTO `t_log` VALUES ('441', '查找所有数据并分页排序', '模块管理', '2018-03-28 17:48:19', '201441402302');
INSERT INTO `t_log` VALUES ('442', '登录系统', '系统登录', '2018-03-28 17:54:25', '201441402302');
INSERT INTO `t_log` VALUES ('443', '查找所有数据并分页排序', '模块管理', '2018-03-28 17:54:29', '201441402302');
INSERT INTO `t_log` VALUES ('444', '登录系统', '系统登录', '2018-03-28 18:08:23', '201441402302');
INSERT INTO `t_log` VALUES ('445', '查找所有数据并分页排序', '模块管理', '2018-03-28 18:08:26', '201441402302');
INSERT INTO `t_log` VALUES ('446', '查找所有数据并分页排序', '模块管理', '2018-03-28 18:10:01', '201441402302');
INSERT INTO `t_log` VALUES ('447', '查找所有数据并分页排序', '模块管理', '2018-03-28 18:38:19', '201441402302');
INSERT INTO `t_log` VALUES ('448', '查找所有数据并分页排序', '模块管理', '2018-03-28 18:47:20', '201441402302');
INSERT INTO `t_log` VALUES ('449', '查找所有数据并分页排序', '模块管理', '2018-03-28 18:51:51', '201441402302');
INSERT INTO `t_log` VALUES ('450', '登录系统', '系统登录', '2018-03-28 18:52:55', '201441402302');
INSERT INTO `t_log` VALUES ('451', '查找所有数据并分页排序', '模块管理', '2018-03-28 18:52:58', '201441402302');
INSERT INTO `t_log` VALUES ('452', '查找所有数据并分页排序', '模块管理', '2018-03-28 18:54:51', '201441402302');
INSERT INTO `t_log` VALUES ('453', '查找所有数据并分页排序', '模块管理', '2018-03-28 18:58:03', '201441402302');
INSERT INTO `t_log` VALUES ('454', '查找所有数据并分页排序', '模块管理', '2018-03-28 19:03:07', '201441402302');
INSERT INTO `t_log` VALUES ('455', '查找所有数据并分页排序', '模块管理', '2018-03-28 19:05:46', '201441402302');
INSERT INTO `t_log` VALUES ('456', '登录系统', '系统登录', '2018-03-28 19:07:12', '201441402302');
INSERT INTO `t_log` VALUES ('457', '查找所有数据并分页排序', '模块管理', '2018-03-28 19:07:15', '201441402302');
INSERT INTO `t_log` VALUES ('458', '查找所有数据并分页排序', '模块管理', '2018-03-28 21:47:15', '201441402302');
INSERT INTO `t_log` VALUES ('459', '查找所有数据并分页排序', '模块管理', '2018-03-28 21:47:26', '201441402302');
INSERT INTO `t_log` VALUES ('460', '查找所有数据并分页排序', '模块管理', '2018-03-28 21:56:34', '201441402302');
INSERT INTO `t_log` VALUES ('461', '查找所有数据并分页排序', '模块管理', '2018-03-28 22:01:47', '201441402302');
INSERT INTO `t_log` VALUES ('462', '登录系统', '系统登录', '2018-03-28 22:03:41', '201441402302');
INSERT INTO `t_log` VALUES ('463', '查找所有数据并分页排序', '模块管理', '2018-03-28 22:03:44', '201441402302');
INSERT INTO `t_log` VALUES ('464', '登录系统', '系统登录', '2018-03-28 22:09:22', '201441402302');
INSERT INTO `t_log` VALUES ('465', '查找所有数据并分页排序', '模块管理', '2018-03-28 22:09:25', '201441402302');
INSERT INTO `t_log` VALUES ('466', '查找所有数据并分页排序', '模块管理', '2018-03-29 09:22:38', '201441402302');
INSERT INTO `t_log` VALUES ('467', '查找所有数据并分页排序', '模块管理', '2018-03-29 09:42:13', '201441402302');
INSERT INTO `t_log` VALUES ('468', '登录系统', '系统登录', '2018-03-29 09:45:48', '201441402302');
INSERT INTO `t_log` VALUES ('469', '查找所有数据并分页排序', '模块管理', '2018-03-29 09:45:52', '201441402302');
INSERT INTO `t_log` VALUES ('470', '登录系统', '系统登录', '2018-03-29 09:47:33', '201441402302');
INSERT INTO `t_log` VALUES ('471', '查找所有数据并分页排序', '模块管理', '2018-03-29 09:47:36', '201441402302');
INSERT INTO `t_log` VALUES ('472', '登录系统', '系统登录', '2018-03-29 09:50:05', '201441402302');
INSERT INTO `t_log` VALUES ('473', '查找所有数据并分页排序', '模块管理', '2018-03-29 09:50:09', '201441402302');
INSERT INTO `t_log` VALUES ('474', '查找所有数据并分页排序', '模块管理', '2018-03-29 10:22:00', '201441402302');
INSERT INTO `t_log` VALUES ('475', '查找所有数据并分页排序', '模块管理', '2018-03-29 10:26:58', '201441402302');
INSERT INTO `t_log` VALUES ('476', '查找所有数据并分页排序', '模块管理', '2018-03-29 10:31:48', '201441402302');
INSERT INTO `t_log` VALUES ('477', '查找所有数据并分页排序', '模块管理', '2018-03-29 10:34:23', '201441402302');
INSERT INTO `t_log` VALUES ('478', '查找所有数据并分页排序', '模块管理', '2018-03-29 10:50:20', '201441402302');
INSERT INTO `t_log` VALUES ('479', '查找所有数据并分页排序', '模块管理', '2018-03-29 10:57:28', '201441402302');
INSERT INTO `t_log` VALUES ('480', '查找所有数据并分页排序', '模块管理', '2018-03-29 10:58:04', '201441402302');
INSERT INTO `t_log` VALUES ('481', '查找所有数据并分页排序', '模块管理', '2018-03-29 11:04:52', '201441402302');
INSERT INTO `t_log` VALUES ('482', '查找所有数据并分页排序', '模块管理', '2018-03-29 11:16:27', '201441402302');
INSERT INTO `t_log` VALUES ('483', '查找所有数据并分页排序', '模块管理', '2018-03-29 11:30:36', '201441402302');
INSERT INTO `t_log` VALUES ('484', '登录系统', '系统登录', '2018-03-29 11:31:06', '201441402302');
INSERT INTO `t_log` VALUES ('485', '查找所有数据并分页排序', '模块管理', '2018-03-29 11:31:09', '201441402302');
INSERT INTO `t_log` VALUES ('486', '登录系统', '系统登录', '2018-03-29 11:31:33', '201441402302');
INSERT INTO `t_log` VALUES ('487', '查找所有数据并分页排序', '模块管理', '2018-03-29 11:31:36', '201441402302');
INSERT INTO `t_log` VALUES ('488', '查找所有数据并分页排序', '模块管理', '2018-03-29 11:35:48', '201441402302');
INSERT INTO `t_log` VALUES ('489', '查找所有数据并分页排序', '模块管理', '2018-03-29 11:35:55', '201441402302');
INSERT INTO `t_log` VALUES ('490', '查找所有数据并分页排序', '模块管理', '2018-03-29 11:43:50', '201441402302');
INSERT INTO `t_log` VALUES ('491', '登录系统', '系统登录', '2018-03-29 11:43:53', '201441402302');
INSERT INTO `t_log` VALUES ('492', '查找所有数据并分页排序', '模块管理', '2018-03-29 11:43:56', '201441402302');
INSERT INTO `t_log` VALUES ('493', '查找所有数据并分页排序', '模块管理', '2018-03-29 11:44:35', '201441402302');
INSERT INTO `t_log` VALUES ('494', '登录系统', '系统登录', '2018-03-29 11:45:38', '201441402302');
INSERT INTO `t_log` VALUES ('495', '查找所有数据并分页排序', '模块管理', '2018-03-29 11:46:52', '201441402302');
INSERT INTO `t_log` VALUES ('496', '查找所有数据并分页排序', '模块管理', '2018-03-29 11:47:25', '201441402302');
INSERT INTO `t_log` VALUES ('497', '登录系统', '系统登录', '2018-03-29 11:47:56', '201441402302');
INSERT INTO `t_log` VALUES ('498', '查找所有数据并分页排序', '模块管理', '2018-03-29 11:48:57', '201441402302');
INSERT INTO `t_log` VALUES ('499', '登录系统', '系统登录', '2018-03-29 11:50:42', '201441402302');
INSERT INTO `t_log` VALUES ('500', '查找所有数据并分页排序', '模块管理', '2018-03-29 11:50:45', '201441402302');
INSERT INTO `t_log` VALUES ('501', '登录系统', '系统登录', '2018-03-29 11:50:58', '201441402302');
INSERT INTO `t_log` VALUES ('502', '查找所有数据并分页排序', '模块管理', '2018-03-29 11:51:00', '201441402302');
INSERT INTO `t_log` VALUES ('503', '登录系统', '系统登录', '2018-03-29 11:51:18', '201441402302');
INSERT INTO `t_log` VALUES ('504', '查找所有数据并分页排序', '模块管理', '2018-03-29 11:51:21', '201441402302');
INSERT INTO `t_log` VALUES ('505', '查找所有数据并分页排序', '模块管理', '2018-03-29 11:51:53', '201441402302');
INSERT INTO `t_log` VALUES ('506', '登录系统', '系统登录', '2018-03-29 12:22:00', '201441402302');
INSERT INTO `t_log` VALUES ('507', '查找所有数据并分页排序', '模块管理', '2018-03-29 12:22:03', '201441402302');
INSERT INTO `t_log` VALUES ('508', '登录系统', '系统登录', '2018-03-29 12:23:09', '201441402302');
INSERT INTO `t_log` VALUES ('509', '查找所有数据并分页排序', '模块管理', '2018-03-29 12:23:18', '201441402302');
INSERT INTO `t_log` VALUES ('510', '查找所有数据并分页排序', '模块管理', '2018-03-29 12:23:54', '201441402302');
INSERT INTO `t_log` VALUES ('511', '查找所有数据并分页排序', '模块管理', '2018-03-29 12:24:27', '201441402302');
INSERT INTO `t_log` VALUES ('512', '登录系统', '系统登录', '2018-03-29 12:26:40', '201441402302');
INSERT INTO `t_log` VALUES ('513', '查找所有数据并分页排序', '模块管理', '2018-03-29 12:26:43', '201441402302');
INSERT INTO `t_log` VALUES ('514', '登录系统', '系统登录', '2018-03-29 12:27:33', '201441402302');
INSERT INTO `t_log` VALUES ('515', '查找所有数据并分页排序', '模块管理', '2018-03-29 12:27:36', '201441402302');
INSERT INTO `t_log` VALUES ('516', '登录系统', '系统登录', '2018-03-29 12:29:54', '201441402302');
INSERT INTO `t_log` VALUES ('517', '查找所有数据并分页排序', '模块管理', '2018-03-29 12:29:57', '201441402302');
INSERT INTO `t_log` VALUES ('518', '查找所有数据并分页排序', '模块管理', '2018-03-29 12:30:28', '201441402302');
INSERT INTO `t_log` VALUES ('519', '登录系统', '系统登录', '2018-03-29 12:32:17', '201441402302');
INSERT INTO `t_log` VALUES ('520', '查找所有数据并分页排序', '模块管理', '2018-03-29 12:32:21', '201441402302');
INSERT INTO `t_log` VALUES ('521', '查找所有数据并分页排序', '模块管理', '2018-03-29 12:32:57', '201441402302');
INSERT INTO `t_log` VALUES ('522', '查找所有数据并分页排序', '模块管理', '2018-03-29 13:12:55', '201441402302');
INSERT INTO `t_log` VALUES ('523', '查找所有数据并分页排序', '模块管理', '2018-03-29 13:13:36', '201441402302');
INSERT INTO `t_log` VALUES ('524', '登录系统', '系统登录', '2018-03-29 13:20:43', '201441402302');
INSERT INTO `t_log` VALUES ('525', '查找所有数据并分页排序', '模块管理', '2018-03-29 13:20:51', '201441402302');
INSERT INTO `t_log` VALUES ('526', '登录系统', '系统登录', '2018-03-29 13:23:28', '201441402302');
INSERT INTO `t_log` VALUES ('527', '查找所有数据并分页排序', '模块管理', '2018-03-29 13:23:30', '201441402302');
INSERT INTO `t_log` VALUES ('528', '登录系统', '系统登录', '2018-03-29 13:23:58', '201441402302');
INSERT INTO `t_log` VALUES ('529', '查找所有数据并分页排序', '模块管理', '2018-03-29 13:24:01', '201441402302');
INSERT INTO `t_log` VALUES ('530', '查找所有数据并分页排序', '模块管理', '2018-03-29 13:24:32', '201441402302');
INSERT INTO `t_log` VALUES ('531', '查找所有数据并分页排序', '模块管理', '2018-03-29 13:27:07', '201441402302');
INSERT INTO `t_log` VALUES ('532', '查找所有数据并分页排序', '模块管理', '2018-03-29 13:30:41', '201441402302');
INSERT INTO `t_log` VALUES ('533', '查找所有数据并分页排序', '模块管理', '2018-03-29 13:36:51', '201441402302');
INSERT INTO `t_log` VALUES ('534', '查找所有数据并分页排序', '模块管理', '2018-03-29 13:40:21', '201441402302');
INSERT INTO `t_log` VALUES ('535', '查找所有数据并分页排序', '模块管理', '2018-03-29 13:40:52', '201441402302');
INSERT INTO `t_log` VALUES ('536', '查找所有数据并分页排序', '模块管理', '2018-03-29 13:42:37', '201441402302');
INSERT INTO `t_log` VALUES ('537', '查找所有数据并分页排序', '模块管理', '2018-03-29 17:40:50', '201441402302');
INSERT INTO `t_log` VALUES ('538', '查找所有数据并分页排序', '模块管理', '2018-03-29 18:05:44', '201441402302');
INSERT INTO `t_log` VALUES ('539', '查找所有数据并分页排序', '模块管理', '2018-03-29 18:06:34', '201441402302');
INSERT INTO `t_log` VALUES ('540', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:03:53', '201441402302');
INSERT INTO `t_log` VALUES ('541', '登录系统', '系统登录', '2018-03-29 22:06:29', '201441402302');
INSERT INTO `t_log` VALUES ('542', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:06:33', '201441402302');
INSERT INTO `t_log` VALUES ('543', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:07:38', '201441402302');
INSERT INTO `t_log` VALUES ('544', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:08:08', '201441402302');
INSERT INTO `t_log` VALUES ('545', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:09:01', '201441402302');
INSERT INTO `t_log` VALUES ('546', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:09:36', '201441402302');
INSERT INTO `t_log` VALUES ('547', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:10:56', '201441402302');
INSERT INTO `t_log` VALUES ('548', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:11:18', '201441402302');
INSERT INTO `t_log` VALUES ('549', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:11:33', '201441402302');
INSERT INTO `t_log` VALUES ('550', '登录系统', '系统登录', '2018-03-29 22:12:10', '201441402302');
INSERT INTO `t_log` VALUES ('551', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:12:16', '201441402302');
INSERT INTO `t_log` VALUES ('552', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:14:07', '201441402302');
INSERT INTO `t_log` VALUES ('553', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:14:30', '201441402302');
INSERT INTO `t_log` VALUES ('554', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:16:39', '201441402302');
INSERT INTO `t_log` VALUES ('555', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:16:43', '201441402302');
INSERT INTO `t_log` VALUES ('556', '登录系统', '系统登录', '2018-03-29 22:22:32', '201441402302');
INSERT INTO `t_log` VALUES ('557', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:22:35', '201441402302');
INSERT INTO `t_log` VALUES ('558', '登录系统', '系统登录', '2018-03-29 22:22:55', '201441402302');
INSERT INTO `t_log` VALUES ('559', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:22:59', '201441402302');
INSERT INTO `t_log` VALUES ('560', '登录系统', '系统登录', '2018-03-29 22:23:31', '201441402302');
INSERT INTO `t_log` VALUES ('561', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:23:33', '201441402302');
INSERT INTO `t_log` VALUES ('562', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:23:59', '201441402302');
INSERT INTO `t_log` VALUES ('563', '登录系统', '系统登录', '2018-03-29 22:25:23', '201441402302');
INSERT INTO `t_log` VALUES ('564', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:25:26', '201441402302');
INSERT INTO `t_log` VALUES ('565', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:26:09', '201441402302');
INSERT INTO `t_log` VALUES ('566', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:27:09', '201441402302');
INSERT INTO `t_log` VALUES ('567', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:27:17', '201441402302');
INSERT INTO `t_log` VALUES ('568', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:27:56', '201441402302');
INSERT INTO `t_log` VALUES ('569', '登录系统', '系统登录', '2018-03-29 22:31:03', '201441402302');
INSERT INTO `t_log` VALUES ('570', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:31:05', '201441402302');
INSERT INTO `t_log` VALUES ('571', '登录系统', '系统登录', '2018-03-29 22:48:01', '3213');
INSERT INTO `t_log` VALUES ('572', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:48:04', '201441402302');
INSERT INTO `t_log` VALUES ('573', '登录系统', '系统登录', '2018-03-29 22:48:17', '201441402302');
INSERT INTO `t_log` VALUES ('574', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:48:20', '201441402302');
INSERT INTO `t_log` VALUES ('575', '登录系统', '系统登录', '2018-03-29 22:49:56', '201441402302');
INSERT INTO `t_log` VALUES ('576', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:49:59', '201441402302');
INSERT INTO `t_log` VALUES ('577', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:51:38', '201441402302');
INSERT INTO `t_log` VALUES ('578', '查找所有数据并分页排序', '模块管理', '2018-03-29 22:52:25', '201441402302');
INSERT INTO `t_log` VALUES ('579', '登录系统', '系统登录', '2018-03-29 23:02:04', '201441402302');
INSERT INTO `t_log` VALUES ('580', '查找所有数据并分页排序', '模块管理', '2018-03-29 23:02:06', '201441402302');
INSERT INTO `t_log` VALUES ('581', '查找所有数据并分页排序', '模块管理', '2018-03-29 23:05:02', '201441402302');
INSERT INTO `t_log` VALUES ('582', '查找所有数据并分页排序', '模块管理', '2018-03-29 23:06:05', '201441402302');
INSERT INTO `t_log` VALUES ('583', '查找所有数据并分页排序', '模块管理', '2018-03-29 23:09:36', '201441402302');
INSERT INTO `t_log` VALUES ('584', '查找所有数据并分页排序', '模块管理', '2018-03-29 23:10:36', '201441402302');
INSERT INTO `t_log` VALUES ('585', '查找所有数据并分页排序', '模块管理', '2018-03-29 23:11:43', '201441402302');
INSERT INTO `t_log` VALUES ('586', '查找所有数据并分页排序', '模块管理', '2018-03-29 23:11:44', '201441402302');
INSERT INTO `t_log` VALUES ('587', '查找所有数据并分页排序', '模块管理', '2018-03-29 23:12:42', '201441402302');
INSERT INTO `t_log` VALUES ('588', '登录系统', '系统登录', '2018-03-29 23:14:36', '201441402302');
INSERT INTO `t_log` VALUES ('589', '查找所有数据并分页排序', '模块管理', '2018-04-01 13:40:49', '201441402302');
INSERT INTO `t_log` VALUES ('590', '查找所有数据并分页排序', '模块管理', '2018-04-01 13:41:11', '201441402302');
INSERT INTO `t_log` VALUES ('591', '查找所有数据并分页排序', '模块管理', '2018-04-01 13:41:15', '201441402302');
INSERT INTO `t_log` VALUES ('592', '登录系统', '系统登录', '2018-04-01 14:07:42', '201441402302');
INSERT INTO `t_log` VALUES ('593', '登录系统', '系统登录', '2018-04-01 14:08:17', '201441402302');
INSERT INTO `t_log` VALUES ('594', '登录系统', '系统登录', '2018-04-01 14:08:42', '201441402302');
INSERT INTO `t_log` VALUES ('595', '登录系统', '系统登录', '2018-04-01 14:09:08', '201441402302');
INSERT INTO `t_log` VALUES ('596', '登录系统', '系统登录', '2018-04-01 14:09:29', '201441402302');
INSERT INTO `t_log` VALUES ('597', '登录系统', '系统登录', '2018-04-01 14:10:02', '201441402302');
INSERT INTO `t_log` VALUES ('598', '登录系统', '系统登录', '2018-04-01 16:27:55', '201441402302');
INSERT INTO `t_log` VALUES ('599', '登录系统', '系统登录', '2018-04-01 16:30:00', '201441402302');
INSERT INTO `t_log` VALUES ('600', '登录系统', '系统登录', '2018-04-01 16:30:55', '201441402302');
INSERT INTO `t_log` VALUES ('601', '登录系统', '系统登录', '2018-04-01 16:46:25', '201441402302');
INSERT INTO `t_log` VALUES ('602', '登录系统', '系统登录', '2018-04-01 16:47:19', '201441402302');
INSERT INTO `t_log` VALUES ('603', '登录系统', '系统登录', '2018-04-01 16:48:28', '201441402302');
INSERT INTO `t_log` VALUES ('604', '登录系统', '系统登录', '2018-04-01 21:53:01', '201441402302');
INSERT INTO `t_log` VALUES ('605', '查找多条数据并分页排序', '部门管理', '2018-04-01 21:55:32', '201441402302');
INSERT INTO `t_log` VALUES ('606', '查找多条数据并分页排序', '部门管理', '2018-04-01 21:55:48', '201441402302');
INSERT INTO `t_log` VALUES ('607', '查找所有数据并分页排序', '模块管理', '2018-04-01 22:02:06', '201441402302');
INSERT INTO `t_log` VALUES ('608', '查找多条数据并分页排序', '部门管理', '2018-04-01 22:14:58', '201441402302');
INSERT INTO `t_log` VALUES ('609', '登录系统', '系统登录', '2018-04-01 22:30:55', '201441402302');
INSERT INTO `t_log` VALUES ('610', '查找所有数据并分页排序', '模块管理', '2018-04-01 23:17:48', '201441402302');
INSERT INTO `t_log` VALUES ('611', '登录系统', '系统登录', '2018-04-03 15:26:00', '201441402302');
INSERT INTO `t_log` VALUES ('612', '登录系统', '系统登录', '2018-04-03 15:26:09', '201441402302');
INSERT INTO `t_log` VALUES ('613', '登录系统', '系统登录', '2018-04-03 15:26:12', '201441402302');
INSERT INTO `t_log` VALUES ('614', '登录系统', '系统登录', '2018-04-03 15:30:15', '201441402302');
INSERT INTO `t_log` VALUES ('615', '登录系统', '系统登录', '2018-04-03 15:33:17', '201441402302');
INSERT INTO `t_log` VALUES ('616', '登录系统', '系统登录', '2018-04-03 15:40:04', '201441402302');
INSERT INTO `t_log` VALUES ('617', '登录系统', '系统登录', '2018-04-03 15:53:37', '201441402302');
INSERT INTO `t_log` VALUES ('618', '登录系统', '系统登录', '2018-04-03 15:55:28', '201441402302');
INSERT INTO `t_log` VALUES ('619', '登录系统', '系统登录', '2018-04-03 15:55:33', '201441402302');
INSERT INTO `t_log` VALUES ('620', '登录系统', '系统登录', '2018-04-03 16:14:21', '201441402302');
INSERT INTO `t_log` VALUES ('621', '登录系统', '系统登录', '2018-04-03 17:23:24', '201441402302');
INSERT INTO `t_log` VALUES ('622', '登录系统', '系统登录', '2018-04-03 17:24:16', '201441402302');
INSERT INTO `t_log` VALUES ('623', '登录系统', '系统登录', '2018-04-03 17:24:23', '201441402302');
INSERT INTO `t_log` VALUES ('624', '登录系统', '系统登录', '2018-04-03 17:24:50', '201441402302');
INSERT INTO `t_log` VALUES ('625', '登录系统', '系统登录', '2018-04-03 17:25:33', '201441402302');
INSERT INTO `t_log` VALUES ('626', '登录系统', '系统登录', '2018-04-03 17:26:10', '201441402302');
INSERT INTO `t_log` VALUES ('627', '登录系统', '系统登录', '2018-04-03 17:27:13', '201441402302');
INSERT INTO `t_log` VALUES ('628', '登录系统', '系统登录', '2018-04-03 17:27:44', '201441402302');
INSERT INTO `t_log` VALUES ('629', '登录系统', '系统登录', '2018-04-03 18:13:03', '201441402302');
INSERT INTO `t_log` VALUES ('630', '登录系统', '系统登录', '2018-04-03 18:13:59', '201441402302');
INSERT INTO `t_log` VALUES ('631', '登录系统', '系统登录', '2018-04-03 18:14:04', '201441402302');
INSERT INTO `t_log` VALUES ('632', '登录系统', '系统登录', '2018-04-03 18:14:08', '201441402302');
INSERT INTO `t_log` VALUES ('633', '登录系统', '系统登录', '2018-04-03 18:14:22', '201441402302');
INSERT INTO `t_log` VALUES ('634', '登录系统', '系统登录', '2018-04-03 18:25:41', '201441402302');
INSERT INTO `t_log` VALUES ('635', '登录系统', '系统登录', '2018-04-03 18:26:14', '201441402302');
INSERT INTO `t_log` VALUES ('636', '登录系统', '系统登录', '2018-04-03 18:35:15', '201441402302');
INSERT INTO `t_log` VALUES ('637', '登录系统', '系统登录', '2018-04-03 18:35:24', '201441402302');
INSERT INTO `t_log` VALUES ('638', '登录系统', '系统登录', '2018-04-03 18:35:30', '201441402302');
INSERT INTO `t_log` VALUES ('639', '登录系统', '系统登录', '2018-04-03 18:37:09', '201441402302');
INSERT INTO `t_log` VALUES ('640', '登录系统', '系统登录', '2018-04-03 18:37:51', '201441402302');
INSERT INTO `t_log` VALUES ('641', '登录系统', '系统登录', '2018-04-03 18:38:03', '201441402302');
INSERT INTO `t_log` VALUES ('642', '登录系统', '系统登录', '2018-04-03 22:53:38', '201441402302');
INSERT INTO `t_log` VALUES ('643', '登录系统', '系统登录', '2018-04-05 11:19:16', '201441402302');
INSERT INTO `t_log` VALUES ('644', '登录系统', '系统登录', '2018-04-05 11:19:45', '201441402302');
INSERT INTO `t_log` VALUES ('645', '登录系统', '系统登录', '2018-04-05 11:20:19', '201441402302');
INSERT INTO `t_log` VALUES ('646', '登录系统', '系统登录', '2018-04-05 11:21:35', '201441402302');
INSERT INTO `t_log` VALUES ('647', '登录系统', '系统登录', '2018-04-05 11:22:46', '201441402302');
INSERT INTO `t_log` VALUES ('648', '登录系统', '系统登录', '2018-04-05 11:23:22', '201441402302');
INSERT INTO `t_log` VALUES ('649', '登录系统', '系统登录', '2018-04-05 11:23:42', '201441402302');
INSERT INTO `t_log` VALUES ('650', '登录系统', '系统登录', '2018-04-05 12:34:29', '201441402302');
INSERT INTO `t_log` VALUES ('651', '登录系统', '系统登录', '2018-04-05 12:34:32', '201441402302');
INSERT INTO `t_log` VALUES ('652', '登录系统', '系统登录', '2018-04-05 12:34:33', '201441402302');
INSERT INTO `t_log` VALUES ('653', '登录系统', '系统登录', '2018-04-05 12:34:34', '201441402302');
INSERT INTO `t_log` VALUES ('654', '登录系统', '系统登录', '2018-04-05 12:51:37', '201441402302');
INSERT INTO `t_log` VALUES ('655', '登录系统', '系统登录', '2018-04-05 12:52:07', '201441402302');
INSERT INTO `t_log` VALUES ('656', '登录系统', '系统登录', '2018-04-05 12:52:26', '201441402302');
INSERT INTO `t_log` VALUES ('657', '登录系统', '系统登录', '2018-04-05 12:52:42', '201441402302');
INSERT INTO `t_log` VALUES ('658', '登录系统', '系统登录', '2018-04-05 14:40:20', '201441402302');
INSERT INTO `t_log` VALUES ('659', '登录系统', '系统登录', '2018-04-05 14:40:42', '201441402302');
INSERT INTO `t_log` VALUES ('660', '登录系统', '系统登录', '2018-04-05 14:40:54', '201441402302');
INSERT INTO `t_log` VALUES ('661', '登录系统', '系统登录', '2018-04-05 14:40:56', '201441402302');
INSERT INTO `t_log` VALUES ('662', '登录系统', '系统登录', '2018-04-05 14:41:06', '201441402302');
INSERT INTO `t_log` VALUES ('663', '登录系统', '系统登录', '2018-04-05 14:41:27', '201441402302');
INSERT INTO `t_log` VALUES ('664', '登录系统', '系统登录', '2018-04-05 14:41:39', '201441402302');
INSERT INTO `t_log` VALUES ('665', '登录系统', '系统登录', '2018-04-05 14:41:53', '201441402302');
INSERT INTO `t_log` VALUES ('666', '登录系统', '系统登录', '2018-04-05 14:42:02', '201441402302');
INSERT INTO `t_log` VALUES ('667', '登录系统', '系统登录', '2018-04-05 14:42:04', '201441402302');
INSERT INTO `t_log` VALUES ('668', '登录系统', '系统登录', '2018-04-05 14:42:25', '201441402302');
INSERT INTO `t_log` VALUES ('669', '登录系统', '系统登录', '2018-04-05 14:43:19', '201441402302');
INSERT INTO `t_log` VALUES ('670', '登录系统', '系统登录', '2018-04-05 14:44:20', '201441402302');
INSERT INTO `t_log` VALUES ('671', '登录系统', '系统登录', '2018-04-05 14:44:20', '201441402302');
INSERT INTO `t_log` VALUES ('672', '登录系统', '系统登录', '2018-04-05 14:44:57', '201441402302');
INSERT INTO `t_log` VALUES ('673', '登录系统', '系统登录', '2018-04-05 14:45:15', '201441402302');
INSERT INTO `t_log` VALUES ('674', '登录系统', '系统登录', '2018-04-05 14:45:30', '201441402302');
INSERT INTO `t_log` VALUES ('675', '登录系统', '系统登录', '2018-04-05 14:45:49', '201441402302');
INSERT INTO `t_log` VALUES ('676', '登录系统', '系统登录', '2018-04-05 14:46:44', '201441402302');
INSERT INTO `t_log` VALUES ('677', '登录系统', '系统登录', '2018-04-05 14:47:01', '201441402302');
INSERT INTO `t_log` VALUES ('678', '登录系统', '系统登录', '2018-04-05 14:54:08', '201441402302');
INSERT INTO `t_log` VALUES ('679', '登录系统', '系统登录', '2018-04-05 14:54:34', '201441402302');
INSERT INTO `t_log` VALUES ('680', '登录系统', '系统登录', '2018-04-05 15:24:05', '201441402302');
INSERT INTO `t_log` VALUES ('681', '登录系统', '系统登录', '2018-04-05 15:56:16', '201441402302');
INSERT INTO `t_log` VALUES ('682', '查找所有数据并分页排序', '模块管理', '2018-04-05 15:56:26', '201441402302');
INSERT INTO `t_log` VALUES ('683', '登录系统', '系统登录', '2018-04-05 15:57:04', '201441402302');
INSERT INTO `t_log` VALUES ('684', '登录系统', '系统登录', '2018-04-05 16:02:37', '201441402302');
INSERT INTO `t_log` VALUES ('685', '登录系统', '系统登录', '2018-04-05 16:47:58', '201441402302');
INSERT INTO `t_log` VALUES ('686', '登录系统', '系统登录', '2018-04-05 16:49:20', '201441402302');
INSERT INTO `t_log` VALUES ('687', '登录系统', '系统登录', '2018-04-05 16:55:34', '201441402302');
INSERT INTO `t_log` VALUES ('688', '登录系统', '系统登录', '2018-04-05 16:56:11', '201441402302');
INSERT INTO `t_log` VALUES ('689', '登录系统', '系统登录', '2018-04-05 16:56:41', '201441402302');
INSERT INTO `t_log` VALUES ('690', '登录系统', '系统登录', '2018-04-05 17:03:00', '201441402302');
INSERT INTO `t_log` VALUES ('691', '登录系统', '系统登录', '2018-04-05 17:04:42', '201441402302');
INSERT INTO `t_log` VALUES ('692', '登录系统', '系统登录', '2018-04-05 17:05:50', '201441402302');
INSERT INTO `t_log` VALUES ('693', '登录系统', '系统登录', '2018-04-05 17:06:56', '201441402302');
INSERT INTO `t_log` VALUES ('694', '登录系统', '系统登录', '2018-04-05 17:07:59', '201441402302');
INSERT INTO `t_log` VALUES ('695', '登录系统', '系统登录', '2018-04-05 17:08:47', '201441402302');
INSERT INTO `t_log` VALUES ('696', '登录系统', '系统登录', '2018-04-05 17:09:17', '201441402302');
INSERT INTO `t_log` VALUES ('697', '登录系统', '系统登录', '2018-04-05 17:10:28', '201441402302');
INSERT INTO `t_log` VALUES ('698', '登录系统', '系统登录', '2018-04-05 17:10:49', '201441402302');
INSERT INTO `t_log` VALUES ('699', '登录系统', '系统登录', '2018-04-05 17:11:22', '201441402302');
INSERT INTO `t_log` VALUES ('700', '登录系统', '系统登录', '2018-04-05 17:12:03', '201441402302');
INSERT INTO `t_log` VALUES ('701', '登录系统', '系统登录', '2018-04-05 17:12:41', '201441402302');
INSERT INTO `t_log` VALUES ('702', '登录系统', '系统登录', '2018-04-05 17:13:12', '201441402302');
INSERT INTO `t_log` VALUES ('703', '登录系统', '系统登录', '2018-04-05 17:13:31', '201441402302');
INSERT INTO `t_log` VALUES ('704', '登录系统', '系统登录', '2018-04-05 17:14:12', '201441402302');
INSERT INTO `t_log` VALUES ('705', '登录系统', '系统登录', '2018-04-05 17:15:45', '201441402302');
INSERT INTO `t_log` VALUES ('706', '登录系统', '系统登录', '2018-04-05 17:16:02', '201441402302');
INSERT INTO `t_log` VALUES ('707', '登录系统', '系统登录', '2018-04-05 18:45:04', '201441402302');
INSERT INTO `t_log` VALUES ('708', '登录系统', '系统登录', '2018-04-05 18:45:11', '201441402302');
INSERT INTO `t_log` VALUES ('709', '登录系统', '系统登录', '2018-04-05 18:46:21', '201441402302');
INSERT INTO `t_log` VALUES ('710', '登录系统', '系统登录', '2018-04-05 18:46:37', '201441402302');
INSERT INTO `t_log` VALUES ('711', '登录系统', '系统登录', '2018-04-05 18:49:11', '201441402302');
INSERT INTO `t_log` VALUES ('712', '登录系统', '系统登录', '2018-04-05 18:49:13', '201441402302');
INSERT INTO `t_log` VALUES ('713', '登录系统', '系统登录', '2018-04-05 18:49:34', '201441402302');
INSERT INTO `t_log` VALUES ('714', '登录系统', '系统登录', '2018-04-05 18:51:18', '201441402302');
INSERT INTO `t_log` VALUES ('715', '登录系统', '系统登录', '2018-04-05 18:51:34', '201441402302');
INSERT INTO `t_log` VALUES ('716', '登录系统', '系统登录', '2018-04-05 18:51:43', '201441402302');
INSERT INTO `t_log` VALUES ('717', '登录系统', '系统登录', '2018-04-05 18:52:36', '201441402302');
INSERT INTO `t_log` VALUES ('718', '登录系统', '系统登录', '2018-04-05 18:53:12', '201441402302');
INSERT INTO `t_log` VALUES ('719', '登录系统', '系统登录', '2018-04-05 18:53:59', '201441402302');
INSERT INTO `t_log` VALUES ('720', '登录系统', '系统登录', '2018-04-05 19:01:34', '201441402302');
INSERT INTO `t_log` VALUES ('721', '登录系统', '系统登录', '2018-04-05 19:02:25', '201441402302');
INSERT INTO `t_log` VALUES ('722', '登录系统', '系统登录', '2018-04-05 19:03:34', '201441402302');
INSERT INTO `t_log` VALUES ('723', '登录系统', '系统登录', '2018-04-05 19:05:43', '201441402302');
INSERT INTO `t_log` VALUES ('724', '登录系统', '系统登录', '2018-04-05 19:07:10', '201441402302');
INSERT INTO `t_log` VALUES ('725', '登录系统', '系统登录', '2018-04-05 19:07:38', '201441402302');
INSERT INTO `t_log` VALUES ('726', '登录系统', '系统登录', '2018-04-05 19:08:07', '201441402302');
INSERT INTO `t_log` VALUES ('727', '登录系统', '系统登录', '2018-04-05 19:09:04', '201441402302');
INSERT INTO `t_log` VALUES ('728', '登录系统', '系统登录', '2018-04-05 19:09:48', '201441402302');
INSERT INTO `t_log` VALUES ('729', '登录系统', '系统登录', '2018-04-05 19:10:07', '201441402302');
INSERT INTO `t_log` VALUES ('730', '登录系统', '系统登录', '2018-04-05 19:10:42', '201441402302');
INSERT INTO `t_log` VALUES ('731', '登录系统', '系统登录', '2018-04-05 19:11:24', '201441402302');
INSERT INTO `t_log` VALUES ('732', '登录系统', '系统登录', '2018-04-05 19:11:48', '201441402302');
INSERT INTO `t_log` VALUES ('733', '登录系统', '系统登录', '2018-04-05 19:12:12', '201441402302');
INSERT INTO `t_log` VALUES ('734', '登录系统', '系统登录', '2018-04-05 23:03:48', '201441402302');
INSERT INTO `t_log` VALUES ('735', '登录系统', '系统登录', '2018-04-05 23:04:33', '201441402302');
INSERT INTO `t_log` VALUES ('736', '登录系统', '系统登录', '2018-04-05 23:06:13', '201441402302');
INSERT INTO `t_log` VALUES ('737', '登录系统', '系统登录', '2018-04-05 23:23:07', '201441402302');
INSERT INTO `t_log` VALUES ('738', '登录系统', '系统登录', '2018-04-05 23:23:15', '201441402302');
INSERT INTO `t_log` VALUES ('739', '登录系统', '系统登录', '2018-04-05 23:23:57', '201441402302');
INSERT INTO `t_log` VALUES ('740', '登录系统', '系统登录', '2018-04-05 23:24:01', '201441402302');
INSERT INTO `t_log` VALUES ('741', '登录系统', '系统登录', '2018-04-05 23:24:03', '201441402302');
INSERT INTO `t_log` VALUES ('742', '登录系统', '系统登录', '2018-04-05 23:27:15', '201441402302');
INSERT INTO `t_log` VALUES ('743', '登录系统', '系统登录', '2018-04-05 23:27:36', '201441402302');
INSERT INTO `t_log` VALUES ('744', '登录系统', '系统登录', '2018-04-05 23:28:17', '201441402302');
INSERT INTO `t_log` VALUES ('745', '登录系统', '系统登录', '2018-04-05 23:30:31', '201441402302');
INSERT INTO `t_log` VALUES ('746', '登录系统', '系统登录', '2018-04-05 23:32:19', '201441402302');
INSERT INTO `t_log` VALUES ('747', '登录系统', '系统登录', '2018-04-05 23:32:37', '201441402302');
INSERT INTO `t_log` VALUES ('748', '登录系统', '系统登录', '2018-04-05 23:38:31', '201441402302');
INSERT INTO `t_log` VALUES ('749', '登录系统', '系统登录', '2018-04-05 23:40:26', '201441402302');
INSERT INTO `t_log` VALUES ('750', '登录系统', '系统登录', '2018-04-05 23:41:03', '201441402302');
INSERT INTO `t_log` VALUES ('751', '登录系统', '系统登录', '2018-04-05 23:43:01', '201441402302');
INSERT INTO `t_log` VALUES ('752', '登录系统', '系统登录', '2018-04-05 23:43:54', '201441402302');
INSERT INTO `t_log` VALUES ('753', '登录系统', '系统登录', '2018-04-05 23:45:35', '201441402302');
INSERT INTO `t_log` VALUES ('754', '登录系统', '系统登录', '2018-04-05 23:48:25', '201441402302');
INSERT INTO `t_log` VALUES ('755', '登录系统', '系统登录', '2018-04-05 23:50:26', '201441402302');
INSERT INTO `t_log` VALUES ('756', '登录系统', '系统登录', '2018-04-05 23:52:38', '201441402302');
INSERT INTO `t_log` VALUES ('757', '登录系统', '系统登录', '2018-04-05 23:53:08', '201441402302');
INSERT INTO `t_log` VALUES ('758', '登录系统', '系统登录', '2018-04-06 00:05:11', '201441402302');
INSERT INTO `t_log` VALUES ('759', '登录系统', '系统登录', '2018-04-06 00:06:22', '201441402302');
INSERT INTO `t_log` VALUES ('760', '登录系统', '系统登录', '2018-04-06 00:14:45', '201441402302');
INSERT INTO `t_log` VALUES ('761', '登录系统', '系统登录', '2018-04-06 00:14:51', '201441402302');
INSERT INTO `t_log` VALUES ('762', '登录系统', '系统登录', '2018-04-06 00:14:53', '201441402302');
INSERT INTO `t_log` VALUES ('763', '登录系统', '系统登录', '2018-04-06 00:15:04', '201441402302');
INSERT INTO `t_log` VALUES ('764', '登录系统', '系统登录', '2018-04-06 00:15:07', '201441402302');
INSERT INTO `t_log` VALUES ('765', '登录系统', '系统登录', '2018-04-06 00:15:18', '201441402302');
INSERT INTO `t_log` VALUES ('766', '登录系统', '系统登录', '2018-04-06 00:15:20', '201441402302');
INSERT INTO `t_log` VALUES ('767', '登录系统', '系统登录', '2018-04-06 00:16:08', '201441402302');
INSERT INTO `t_log` VALUES ('768', '登录系统', '系统登录', '2018-04-06 00:16:14', '201441402302');
INSERT INTO `t_log` VALUES ('769', '登录系统', '系统登录', '2018-04-06 00:19:27', '201441402302');
INSERT INTO `t_log` VALUES ('770', '登录系统', '系统登录', '2018-04-06 00:19:41', '201441402302');
INSERT INTO `t_log` VALUES ('771', '登录系统', '系统登录', '2018-04-06 00:19:43', '201441402302');
INSERT INTO `t_log` VALUES ('772', '登录系统', '系统登录', '2018-04-06 00:21:42', '201441402302');
INSERT INTO `t_log` VALUES ('773', '登录系统', '系统登录', '2018-04-06 00:21:49', '201441402302');
INSERT INTO `t_log` VALUES ('774', '登录系统', '系统登录', '2018-04-06 00:21:51', '201441402302');
INSERT INTO `t_log` VALUES ('775', '登录系统', '系统登录', '2018-04-06 00:22:22', '201441402302');
INSERT INTO `t_log` VALUES ('776', '登录系统', '系统登录', '2018-04-06 00:22:35', '201441402302');
INSERT INTO `t_log` VALUES ('777', '登录系统', '系统登录', '2018-04-06 00:22:55', '201441402302');
INSERT INTO `t_log` VALUES ('778', '登录系统', '系统登录', '2018-04-06 12:29:00', '201441402302');
INSERT INTO `t_log` VALUES ('779', '登录系统', '系统登录', '2018-04-06 12:54:48', '201441402302');
INSERT INTO `t_log` VALUES ('780', '登录系统', '系统登录', '2018-04-06 12:57:53', '201441402302');
INSERT INTO `t_log` VALUES ('781', '查找多条数据并分页排序', '部门管理', '2018-04-06 12:57:57', '201441402302');
INSERT INTO `t_log` VALUES ('782', '查找多条数据并分页排序', '部门管理', '2018-04-06 12:58:27', '201441402302');
INSERT INTO `t_log` VALUES ('783', '查找多条数据并分页排序', '部门管理', '2018-04-06 12:59:03', '201441402302');
INSERT INTO `t_log` VALUES ('784', '查找多条数据并分页排序', '部门管理', '2018-04-06 12:59:26', '201441402302');
INSERT INTO `t_log` VALUES ('785', '查找多条数据并分页排序', '部门管理', '2018-04-06 12:59:52', '201441402302');
INSERT INTO `t_log` VALUES ('786', '查找多条数据并分页排序', '部门管理', '2018-04-06 13:14:46', '201441402302');
INSERT INTO `t_log` VALUES ('787', '查找多条数据并分页排序', '部门管理', '2018-04-06 13:20:56', '201441402302');
INSERT INTO `t_log` VALUES ('788', '查找多条数据并分页排序', '部门管理', '2018-04-06 13:21:05', '201441402302');
INSERT INTO `t_log` VALUES ('789', '查找多条数据并分页排序', '部门管理', '2018-04-06 13:21:28', '201441402302');
INSERT INTO `t_log` VALUES ('790', '查找多条数据并分页排序', '部门管理', '2018-04-06 13:21:41', '201441402302');
INSERT INTO `t_log` VALUES ('791', '查找多条数据并分页排序', '部门管理', '2018-04-06 13:21:59', '201441402302');
INSERT INTO `t_log` VALUES ('792', '查找多条数据并分页排序', '部门管理', '2018-04-06 13:22:14', '201441402302');
INSERT INTO `t_log` VALUES ('793', '查找多条数据并分页排序', '部门管理', '2018-04-06 13:22:30', '201441402302');
INSERT INTO `t_log` VALUES ('794', '查找多条数据并分页排序', '部门管理', '2018-04-06 13:22:41', '201441402302');
INSERT INTO `t_log` VALUES ('795', '查找多条数据并分页排序', '部门管理', '2018-04-06 13:23:12', '201441402302');
INSERT INTO `t_log` VALUES ('796', '查找多条数据并分页排序', '部门管理', '2018-04-06 13:23:25', '201441402302');
INSERT INTO `t_log` VALUES ('797', '查找多条数据并分页排序', '部门管理', '2018-04-06 13:23:34', '201441402302');
INSERT INTO `t_log` VALUES ('798', '查找多条数据并分页排序', '部门管理', '2018-04-06 13:23:55', '201441402302');
INSERT INTO `t_log` VALUES ('799', '查找多条数据并分页排序', '部门管理', '2018-04-06 13:24:05', '201441402302');
INSERT INTO `t_log` VALUES ('800', '查找多条数据并分页排序', '部门管理', '2018-04-06 13:24:31', '201441402302');
INSERT INTO `t_log` VALUES ('801', '登录系统', '系统登录', '2018-04-06 14:13:00', '201441402302');
INSERT INTO `t_log` VALUES ('802', '登录系统', '系统登录', '2018-04-06 14:24:57', '201441402302');
INSERT INTO `t_log` VALUES ('803', '登录系统', '系统登录', '2018-04-06 22:04:25', '201441402302');
INSERT INTO `t_log` VALUES ('804', '登录系统', '系统登录', '2018-04-06 22:10:02', '201441402302');
INSERT INTO `t_log` VALUES ('805', '登录系统', '系统登录', '2018-04-06 22:10:49', '201441402302');
INSERT INTO `t_log` VALUES ('806', '登录系统', '系统登录', '2018-04-06 22:10:57', '201441402302');
INSERT INTO `t_log` VALUES ('807', '登录系统', '系统登录', '2018-04-06 22:11:48', '201441402302');
INSERT INTO `t_log` VALUES ('808', '登录系统', '系统登录', '2018-04-06 22:24:30', '201441402302');
INSERT INTO `t_log` VALUES ('809', '登录系统', '系统登录', '2018-04-06 22:25:47', '201441402302');
INSERT INTO `t_log` VALUES ('810', '登录系统', '系统登录', '2018-04-06 22:26:39', '201441402302');
INSERT INTO `t_log` VALUES ('811', '登录系统', '系统登录', '2018-04-06 22:27:00', '201441402302');
INSERT INTO `t_log` VALUES ('812', '登录系统', '系统登录', '2018-04-06 22:27:56', '201441402302');
INSERT INTO `t_log` VALUES ('813', '登录系统', '系统登录', '2018-04-06 22:28:12', '201441402302');
INSERT INTO `t_log` VALUES ('814', '登录系统', '系统登录', '2018-04-06 22:28:27', '201441402302');
INSERT INTO `t_log` VALUES ('815', '登录系统', '系统登录', '2018-04-06 22:28:47', '201441402302');
INSERT INTO `t_log` VALUES ('816', '登录系统', '系统登录', '2018-04-06 22:28:52', '201441402302');
INSERT INTO `t_log` VALUES ('817', '登录系统', '系统登录', '2018-04-06 22:29:15', '201441402302');
INSERT INTO `t_log` VALUES ('818', '登录系统', '系统登录', '2018-04-06 22:29:20', '201441402302');
INSERT INTO `t_log` VALUES ('819', '登录系统', '系统登录', '2018-04-06 22:31:01', '201441402302');
INSERT INTO `t_log` VALUES ('820', '登录系统', '系统登录', '2018-04-06 22:31:23', '201441402302');
INSERT INTO `t_log` VALUES ('821', '登录系统', '系统登录', '2018-04-06 22:31:40', '201441402302');
INSERT INTO `t_log` VALUES ('822', '登录系统', '系统登录', '2018-04-06 22:31:44', '201441402302');
INSERT INTO `t_log` VALUES ('823', '登录系统', '系统登录', '2018-04-06 22:32:05', '201441402302');
INSERT INTO `t_log` VALUES ('824', '登录系统', '系统登录', '2018-04-06 22:32:08', '201441402302');
INSERT INTO `t_log` VALUES ('825', '登录系统', '系统登录', '2018-04-06 22:33:05', '201441402302');
INSERT INTO `t_log` VALUES ('826', '登录系统', '系统登录', '2018-04-06 22:35:23', '201441402302');
INSERT INTO `t_log` VALUES ('827', '登录系统', '系统登录', '2018-04-06 22:36:17', '201441402302');
INSERT INTO `t_log` VALUES ('828', '登录系统', '系统登录', '2018-04-06 22:37:47', '201441402302');
INSERT INTO `t_log` VALUES ('829', '登录系统', '系统登录', '2018-04-06 22:38:07', '201441402302');
INSERT INTO `t_log` VALUES ('830', '登录系统', '系统登录', '2018-04-06 22:39:49', '201441402302');
INSERT INTO `t_log` VALUES ('831', '登录系统', '系统登录', '2018-04-06 22:40:29', '201441402302');
INSERT INTO `t_log` VALUES ('832', '登录系统', '系统登录', '2018-04-06 22:41:03', '201441402302');
INSERT INTO `t_log` VALUES ('833', '登录系统', '系统登录', '2018-04-06 22:41:24', '201441402302');
INSERT INTO `t_log` VALUES ('834', '登录系统', '系统登录', '2018-04-06 22:41:58', '201441402302');
INSERT INTO `t_log` VALUES ('835', '登录系统', '系统登录', '2018-04-06 22:42:41', '201441402302');
INSERT INTO `t_log` VALUES ('836', '登录系统', '系统登录', '2018-04-06 22:43:21', '201441402302');
INSERT INTO `t_log` VALUES ('837', '登录系统', '系统登录', '2018-04-06 22:44:29', '201441402302');
INSERT INTO `t_log` VALUES ('838', '登录系统', '系统登录', '2018-04-06 22:44:37', '201441402302');
INSERT INTO `t_log` VALUES ('839', '登录系统', '系统登录', '2018-04-06 22:44:55', '201441402302');
INSERT INTO `t_log` VALUES ('840', '登录系统', '系统登录', '2018-04-06 22:45:01', '201441402302');
INSERT INTO `t_log` VALUES ('841', '登录系统', '系统登录', '2018-04-06 22:45:16', '201441402302');
INSERT INTO `t_log` VALUES ('842', '登录系统', '系统登录', '2018-04-06 22:45:24', '201441402302');
INSERT INTO `t_log` VALUES ('843', '登录系统', '系统登录', '2018-04-06 22:45:50', '201441402302');
INSERT INTO `t_log` VALUES ('844', '登录系统', '系统登录', '2018-04-06 22:46:28', '201441402302');
INSERT INTO `t_log` VALUES ('845', '登录系统', '系统登录', '2018-04-06 22:48:24', '201441402302');
INSERT INTO `t_log` VALUES ('846', '登录系统', '系统登录', '2018-04-06 22:49:35', '201441402302');
INSERT INTO `t_log` VALUES ('847', '登录系统', '系统登录', '2018-04-06 22:49:51', '201441402302');
INSERT INTO `t_log` VALUES ('848', '登录系统', '系统登录', '2018-04-06 22:50:32', '201441402302');
INSERT INTO `t_log` VALUES ('849', '登录系统', '系统登录', '2018-04-06 22:51:12', '201441402302');
INSERT INTO `t_log` VALUES ('850', '登录系统', '系统登录', '2018-04-06 22:51:36', '201441402302');
INSERT INTO `t_log` VALUES ('851', '登录系统', '系统登录', '2018-04-06 22:56:12', '201441402302');
INSERT INTO `t_log` VALUES ('852', '登录系统', '系统登录', '2018-04-06 22:57:42', '201441402302');
INSERT INTO `t_log` VALUES ('853', '登录系统', '系统登录', '2018-04-06 22:57:48', '201441402302');
INSERT INTO `t_log` VALUES ('854', '登录系统', '系统登录', '2018-04-06 22:57:51', '201441402302');
INSERT INTO `t_log` VALUES ('855', '登录系统', '系统登录', '2018-04-06 22:58:59', '201441402302');
INSERT INTO `t_log` VALUES ('856', '登录系统', '系统登录', '2018-04-06 22:59:10', '201441402302');
INSERT INTO `t_log` VALUES ('857', '登录系统', '系统登录', '2018-04-06 23:08:51', '201441402302');
INSERT INTO `t_log` VALUES ('858', '登录系统', '系统登录', '2018-04-06 23:09:35', '201441402302');
INSERT INTO `t_log` VALUES ('859', '登录系统', '系统登录', '2018-04-06 23:16:46', '201441402302');
INSERT INTO `t_log` VALUES ('860', '登录系统', '系统登录', '2018-04-06 23:51:39', '201441402302');
INSERT INTO `t_log` VALUES ('861', '登录系统', '系统登录', '2018-04-06 23:58:35', '201441402302');
INSERT INTO `t_log` VALUES ('862', '登录系统', '系统登录', '2018-04-06 23:58:56', '201441402302');
INSERT INTO `t_log` VALUES ('863', '登录系统', '系统登录', '2018-04-06 23:59:15', '201441402302');
INSERT INTO `t_log` VALUES ('864', '登录系统', '系统登录', '2018-04-06 23:59:26', '201441402302');
INSERT INTO `t_log` VALUES ('865', '登录系统', '系统登录', '2018-04-07 00:00:19', '201441402302');
INSERT INTO `t_log` VALUES ('866', '登录系统', '系统登录', '2018-04-07 11:30:17', '201441402302');
INSERT INTO `t_log` VALUES ('867', '查找所有数据并分页排序', '模块管理', '2018-04-07 15:30:40', '201441402302');
INSERT INTO `t_log` VALUES ('868', '登录系统', '系统登录', '2018-04-07 15:37:12', '201441402302');
INSERT INTO `t_log` VALUES ('869', '查找所有数据并分页排序', '模块管理', '2018-04-07 15:37:18', '201441402302');
INSERT INTO `t_log` VALUES ('870', '登录系统', '系统登录', '2018-04-07 15:37:51', '201441402302');
INSERT INTO `t_log` VALUES ('871', '查找所有数据并分页排序', '模块管理', '2018-04-07 15:37:54', '201441402302');
INSERT INTO `t_log` VALUES ('872', '登录系统', '系统登录', '2018-04-07 15:38:41', '201441402302');
INSERT INTO `t_log` VALUES ('873', '查找所有数据并分页排序', '模块管理', '2018-04-07 15:38:46', '201441402302');
INSERT INTO `t_log` VALUES ('874', '查找所有数据并分页排序', '模块管理', '2018-04-07 23:08:21', '201441402302');
INSERT INTO `t_log` VALUES ('875', '登录系统', '系统登录', '2018-04-07 23:09:40', '201441402302');
INSERT INTO `t_log` VALUES ('876', '查找所有数据并分页排序', '模块管理', '2018-04-07 23:09:45', '201441402302');
INSERT INTO `t_log` VALUES ('877', '登录系统', '系统登录', '2018-04-07 23:10:00', '201441402302');
INSERT INTO `t_log` VALUES ('878', '登录系统', '系统登录', '2018-04-07 23:12:36', '201441402302');
INSERT INTO `t_log` VALUES ('879', '查找所有数据并分页排序', '模块管理', '2018-04-07 23:19:04', '201441402302');
INSERT INTO `t_log` VALUES ('880', '登录系统', '系统登录', '2018-04-07 23:19:11', '201441402302');
INSERT INTO `t_log` VALUES ('881', '查找所有数据并分页排序', '模块管理', '2018-04-07 23:20:15', '201441402302');
INSERT INTO `t_log` VALUES ('882', '登录系统', '系统登录', '2018-04-07 23:20:18', '201441402302');
INSERT INTO `t_log` VALUES ('883', '登录系统', '系统登录', '2018-04-07 23:22:35', '201441402302');
INSERT INTO `t_log` VALUES ('884', '登录系统', '系统登录', '2018-04-07 23:25:05', '201441402302');
INSERT INTO `t_log` VALUES ('885', '查找多条数据并分页排序', '部门管理', '2018-04-07 23:26:41', '201441402302');
INSERT INTO `t_log` VALUES ('886', '登录系统', '系统登录', '2018-04-07 23:27:26', '201441402302');
INSERT INTO `t_log` VALUES ('887', '登录系统', '系统登录', '2018-04-07 23:29:42', '201441402302');
INSERT INTO `t_log` VALUES ('888', '登录系统', '系统登录', '2018-04-07 23:30:21', '201441402302');
INSERT INTO `t_log` VALUES ('889', '登录系统', '系统登录', '2018-04-07 23:31:04', '201441402302');
INSERT INTO `t_log` VALUES ('890', '登录系统', '系统登录', '2018-04-07 23:31:34', '201441402302');
INSERT INTO `t_log` VALUES ('891', '登录系统', '系统登录', '2018-04-07 23:31:38', '201441402302');
INSERT INTO `t_log` VALUES ('892', '登录系统', '系统登录', '2018-04-08 13:06:48', '201441402302');
INSERT INTO `t_log` VALUES ('893', '查找所有数据并分页排序', '模块管理', '2018-04-08 13:10:19', '201441402302');
INSERT INTO `t_log` VALUES ('894', '查找所有数据并分页排序', '模块管理', '2018-04-08 13:27:30', '201441402302');
INSERT INTO `t_log` VALUES ('895', '查找所有数据并分页排序', '模块管理', '2018-04-08 13:35:27', '201441402302');
INSERT INTO `t_log` VALUES ('896', '登录系统', '系统登录', '2018-04-08 13:37:04', '201441402302');
INSERT INTO `t_log` VALUES ('897', '查找所有数据并分页排序', '模块管理', '2018-04-08 13:37:07', '201441402302');
INSERT INTO `t_log` VALUES ('898', '登录系统', '系统登录', '2018-04-08 13:38:07', '201441402302');
INSERT INTO `t_log` VALUES ('899', '查找所有数据并分页排序', '模块管理', '2018-04-08 13:38:12', '201441402302');
INSERT INTO `t_log` VALUES ('900', '登录系统', '系统登录', '2018-04-08 13:39:21', '201441402302');
INSERT INTO `t_log` VALUES ('901', '登录系统', '系统登录', '2018-04-08 13:46:25', '201441402302');
INSERT INTO `t_log` VALUES ('902', '查找所有数据并分页排序', '模块管理', '2018-04-08 13:46:29', '201441402302');
INSERT INTO `t_log` VALUES ('903', '登录系统', '系统登录', '2018-04-08 13:47:01', '201441402302');
INSERT INTO `t_log` VALUES ('904', '查找所有数据并分页排序', '模块管理', '2018-04-08 13:47:05', '201441402302');
INSERT INTO `t_log` VALUES ('905', '查找所有数据并分页排序', '模块管理', '2018-04-08 13:54:34', '201441402302');
INSERT INTO `t_log` VALUES ('906', '查找所有数据并分页排序', '模块管理', '2018-04-08 13:56:28', '201441402302');
INSERT INTO `t_log` VALUES ('907', '登录系统', '系统登录', '2018-04-08 14:00:37', '201441402302');
INSERT INTO `t_log` VALUES ('908', '登录系统', '系统登录', '2018-04-08 14:00:43', '201441402302');
INSERT INTO `t_log` VALUES ('909', '登录系统', '系统登录', '2018-04-08 14:00:45', '201441402302');
INSERT INTO `t_log` VALUES ('910', '登录系统', '系统登录', '2018-04-08 14:00:48', '201441402302');
INSERT INTO `t_log` VALUES ('911', '登录系统', '系统登录', '2018-04-08 14:02:41', '201441402302');
INSERT INTO `t_log` VALUES ('912', '登录系统', '系统登录', '2018-04-08 14:03:26', '201441402302');
INSERT INTO `t_log` VALUES ('913', '登录系统', '系统登录', '2018-04-08 14:07:48', '201441402302');
INSERT INTO `t_log` VALUES ('914', '查找所有数据并分页排序', '模块管理', '2018-04-08 14:07:51', '201441402302');
INSERT INTO `t_log` VALUES ('915', '登录系统', '系统登录', '2018-04-08 14:17:36', '201441402302');
INSERT INTO `t_log` VALUES ('916', '登录系统', '系统登录', '2018-04-08 14:18:45', '201441402302');
INSERT INTO `t_log` VALUES ('917', '登录系统', '系统登录', '2018-04-08 14:28:18', '201441402302');
INSERT INTO `t_log` VALUES ('918', '登录系统', '系统登录', '2018-04-08 14:30:07', '201441402302');
INSERT INTO `t_log` VALUES ('919', '登录系统', '系统登录', '2018-04-08 14:33:10', '201441402302');
INSERT INTO `t_log` VALUES ('920', '登录系统', '系统登录', '2018-04-08 14:35:27', '201441402302');
INSERT INTO `t_log` VALUES ('921', '登录系统', '系统登录', '2018-04-08 14:39:44', '201441402302');
INSERT INTO `t_log` VALUES ('922', '登录系统', '系统登录', '2018-04-08 14:46:59', '201441402302');
INSERT INTO `t_log` VALUES ('923', '登录系统', '系统登录', '2018-04-08 14:47:29', '201441402302');
INSERT INTO `t_log` VALUES ('924', '登录系统', '系统登录', '2018-04-08 15:24:02', '201441402302');
INSERT INTO `t_log` VALUES ('925', '登录系统', '系统登录', '2018-04-08 15:24:36', '201441402302');
INSERT INTO `t_log` VALUES ('926', '登录系统', '系统登录', '2018-04-08 15:26:00', '201441402302');
INSERT INTO `t_log` VALUES ('927', '登录系统', '系统登录', '2018-04-08 15:26:29', '201441402302');
INSERT INTO `t_log` VALUES ('928', '登录系统', '系统登录', '2018-04-08 15:26:37', '201441402302');
INSERT INTO `t_log` VALUES ('929', '登录系统', '系统登录', '2018-04-08 15:27:21', '201441402302');
INSERT INTO `t_log` VALUES ('930', '登录系统', '系统登录', '2018-04-08 15:27:38', '201441402302');
INSERT INTO `t_log` VALUES ('931', '登录系统', '系统登录', '2018-04-08 15:27:52', '201441402302');
INSERT INTO `t_log` VALUES ('932', '登录系统', '系统登录', '2018-04-08 15:28:13', '201441402302');
INSERT INTO `t_log` VALUES ('933', '登录系统', '系统登录', '2018-04-08 15:29:22', '201441402302');
INSERT INTO `t_log` VALUES ('934', '登录系统', '系统登录', '2018-04-08 15:30:50', '201441402302');
INSERT INTO `t_log` VALUES ('935', '登录系统', '系统登录', '2018-04-08 15:32:13', '201441402302');
INSERT INTO `t_log` VALUES ('936', '登录系统', '系统登录', '2018-04-08 15:34:04', '201441402302');
INSERT INTO `t_log` VALUES ('937', '登录系统', '系统登录', '2018-04-08 15:37:58', '201441402302');
INSERT INTO `t_log` VALUES ('938', '登录系统', '系统登录', '2018-04-08 15:42:32', '201441402302');
INSERT INTO `t_log` VALUES ('939', '登录系统', '系统登录', '2018-04-08 15:43:34', '201441402302');
INSERT INTO `t_log` VALUES ('940', '登录系统', '系统登录', '2018-04-08 15:45:47', '201441402302');
INSERT INTO `t_log` VALUES ('941', '登录系统', '系统登录', '2018-04-08 15:48:17', '201441402302');
INSERT INTO `t_log` VALUES ('942', '登录系统', '系统登录', '2018-04-08 15:52:15', '201441402302');
INSERT INTO `t_log` VALUES ('943', '登录系统', '系统登录', '2018-04-08 15:56:02', '201441402302');
INSERT INTO `t_log` VALUES ('944', '登录系统', '系统登录', '2018-04-08 15:57:29', '201441402302');
INSERT INTO `t_log` VALUES ('945', '登录系统', '系统登录', '2018-04-08 16:01:23', '201441402302');
INSERT INTO `t_log` VALUES ('946', '登录系统', '系统登录', '2018-04-08 16:01:25', '201441402302');
INSERT INTO `t_log` VALUES ('947', '登录系统', '系统登录', '2018-04-08 16:04:45', '201441402302');
INSERT INTO `t_log` VALUES ('948', '登录系统', '系统登录', '2018-04-08 16:04:49', '201441402302');
INSERT INTO `t_log` VALUES ('949', '登录系统', '系统登录', '2018-04-08 16:13:31', '201441402302');
INSERT INTO `t_log` VALUES ('950', '登录系统', '系统登录', '2018-04-08 16:16:40', '201441402302');
INSERT INTO `t_log` VALUES ('951', '登录系统', '系统登录', '2018-04-08 17:37:12', '201441402302');
INSERT INTO `t_log` VALUES ('952', '登录系统', '系统登录', '2018-04-08 17:37:53', '201441402302');
INSERT INTO `t_log` VALUES ('953', '登录系统', '系统登录', '2018-04-08 17:37:57', '201441402302');
INSERT INTO `t_log` VALUES ('954', '登录系统', '系统登录', '2018-04-08 17:38:23', '201441402302');
INSERT INTO `t_log` VALUES ('955', '登录系统', '系统登录', '2018-04-08 17:38:29', '201441402302');
INSERT INTO `t_log` VALUES ('956', '登录系统', '系统登录', '2018-04-08 17:38:33', '201441402302');
INSERT INTO `t_log` VALUES ('957', '登录系统', '系统登录', '2018-04-08 17:39:29', '201441402302');
INSERT INTO `t_log` VALUES ('958', '登录系统', '系统登录', '2018-04-08 17:39:33', '201441402302');
INSERT INTO `t_log` VALUES ('959', '登录系统', '系统登录', '2018-04-08 17:40:56', '201441402302');
INSERT INTO `t_log` VALUES ('960', '登录系统', '系统登录', '2018-04-08 17:41:02', '201441402302');
INSERT INTO `t_log` VALUES ('961', '登录系统', '系统登录', '2018-04-08 17:41:06', '201441402302');
INSERT INTO `t_log` VALUES ('962', '登录系统', '系统登录', '2018-04-08 17:41:18', '201441402302');
INSERT INTO `t_log` VALUES ('963', '登录系统', '系统登录', '2018-04-08 17:42:03', '201441402302');
INSERT INTO `t_log` VALUES ('964', '登录系统', '系统登录', '2018-04-08 17:42:24', '201441402302');
INSERT INTO `t_log` VALUES ('965', '登录系统', '系统登录', '2018-04-08 17:48:54', '201441402302');
INSERT INTO `t_log` VALUES ('966', '登录系统', '系统登录', '2018-04-08 17:49:41', '201441402302');
INSERT INTO `t_log` VALUES ('967', '登录系统', '系统登录', '2018-04-08 17:50:52', '201441402302');
INSERT INTO `t_log` VALUES ('968', '登录系统', '系统登录', '2018-04-08 17:51:35', '201441402302');
INSERT INTO `t_log` VALUES ('969', '登录系统', '系统登录', '2018-04-08 17:52:10', '201441402302');
INSERT INTO `t_log` VALUES ('970', '登录系统', '系统登录', '2018-04-08 17:53:12', '201441402302');
INSERT INTO `t_log` VALUES ('971', '登录系统', '系统登录', '2018-04-08 17:55:36', '201441402302');
INSERT INTO `t_log` VALUES ('972', '登录系统', '系统登录', '2018-04-08 17:56:39', '201441402302');
INSERT INTO `t_log` VALUES ('973', '登录系统', '系统登录', '2018-04-08 17:57:20', '201441402302');
INSERT INTO `t_log` VALUES ('974', '登录系统', '系统登录', '2018-04-08 17:58:16', '201441402302');
INSERT INTO `t_log` VALUES ('975', '登录系统', '系统登录', '2018-04-08 17:59:31', '201441402302');
INSERT INTO `t_log` VALUES ('976', '登录系统', '系统登录', '2018-04-08 17:59:55', '201441402302');
INSERT INTO `t_log` VALUES ('977', '登录系统', '系统登录', '2018-04-08 18:00:23', '201441402302');
INSERT INTO `t_log` VALUES ('978', '登录系统', '系统登录', '2018-04-08 18:00:44', '201441402302');
INSERT INTO `t_log` VALUES ('979', '登录系统', '系统登录', '2018-04-08 18:01:22', '201441402302');
INSERT INTO `t_log` VALUES ('980', '登录系统', '系统登录', '2018-04-08 18:01:48', '201441402302');
INSERT INTO `t_log` VALUES ('981', '登录系统', '系统登录', '2018-04-08 18:02:12', '201441402302');
INSERT INTO `t_log` VALUES ('982', '登录系统', '系统登录', '2018-04-08 18:02:49', '201441402302');
INSERT INTO `t_log` VALUES ('983', '登录系统', '系统登录', '2018-04-08 18:25:02', '201441402302');
INSERT INTO `t_log` VALUES ('984', '查找所有数据并分页排序', '模块管理', '2018-04-08 18:27:54', '201441402302');
INSERT INTO `t_log` VALUES ('985', '登录系统', '系统登录', '2018-04-08 18:47:15', '201441402302');
INSERT INTO `t_log` VALUES ('986', '查找所有数据并分页排序', '模块管理', '2018-04-08 18:50:58', '201441402302');
INSERT INTO `t_log` VALUES ('987', '登录系统', '系统登录', '2018-04-08 18:54:44', '201441402302');
INSERT INTO `t_log` VALUES ('988', '查找所有数据并分页排序', '模块管理', '2018-04-08 19:01:51', '201441402302');
INSERT INTO `t_log` VALUES ('989', '登录系统', '系统登录', '2018-04-08 19:01:57', '201441402302');
INSERT INTO `t_log` VALUES ('990', '登录系统', '系统登录', '2018-04-08 19:14:12', '201441402302');
INSERT INTO `t_log` VALUES ('991', '登录系统', '系统登录', '2018-04-08 19:15:45', '201441402302');
INSERT INTO `t_log` VALUES ('992', '登录系统', '系统登录', '2018-04-08 19:16:16', '201441402302');
INSERT INTO `t_log` VALUES ('993', '登录系统', '系统登录', '2018-04-08 19:16:38', '201441402302');
INSERT INTO `t_log` VALUES ('994', '登录系统', '系统登录', '2018-04-08 19:23:47', '201441402302');
INSERT INTO `t_log` VALUES ('995', '登录系统', '系统登录', '2018-04-08 19:26:32', '201441402302');
INSERT INTO `t_log` VALUES ('996', '登录系统', '系统登录', '2018-04-08 19:36:44', '201441402302');
INSERT INTO `t_log` VALUES ('997', '登录系统', '系统登录', '2018-04-08 19:38:19', '201441402302');
INSERT INTO `t_log` VALUES ('998', '登录系统', '系统登录', '2018-04-08 19:41:13', '201441402302');
INSERT INTO `t_log` VALUES ('999', '查找所有数据并分页排序', '模块管理', '2018-04-08 22:34:24', '201441402302');
INSERT INTO `t_log` VALUES ('1000', '登录系统', '系统登录', '2018-04-08 22:36:28', '201441402302');
INSERT INTO `t_log` VALUES ('1001', '查找所有数据并分页排序', '模块管理', '2018-04-08 22:36:59', '201441402302');
INSERT INTO `t_log` VALUES ('1002', '登录系统', '系统登录', '2018-04-08 22:46:52', '201441402302');
INSERT INTO `t_log` VALUES ('1003', '登录系统', '系统登录', '2018-04-08 22:48:12', '201441402302');
INSERT INTO `t_log` VALUES ('1004', '查找所有数据并分页排序', '模块管理', '2018-04-08 22:55:22', '201441402302');
INSERT INTO `t_log` VALUES ('1005', '查找所有数据并分页排序', '模块管理', '2018-04-09 11:19:26', '201441402302');
INSERT INTO `t_log` VALUES ('1006', '查找所有数据并分页排序', '模块管理', '2018-04-09 11:19:45', '201441402302');
INSERT INTO `t_log` VALUES ('1007', '登录系统', '系统登录', '2018-04-09 11:48:52', '201441402302');
INSERT INTO `t_log` VALUES ('1008', '查找所有数据并分页排序', '模块管理', '2018-04-09 11:49:45', '201441402302');
INSERT INTO `t_log` VALUES ('1009', '登录系统', '系统登录', '2018-04-09 11:52:59', '201441402302');
INSERT INTO `t_log` VALUES ('1010', '查找所有数据并分页排序', '模块管理', '2018-04-09 11:53:01', '201441402302');
INSERT INTO `t_log` VALUES ('1011', '查找所有数据并分页排序', '模块管理', '2018-04-09 11:53:32', '201441402302');
INSERT INTO `t_log` VALUES ('1012', '查找所有数据并分页排序', '模块管理', '2018-04-09 11:53:53', '201441402302');
INSERT INTO `t_log` VALUES ('1013', '查找所有数据并分页排序', '模块管理', '2018-04-09 11:54:16', '201441402302');
INSERT INTO `t_log` VALUES ('1014', '查找所有数据并分页排序', '模块管理', '2018-04-09 13:22:47', '201441402302');
INSERT INTO `t_log` VALUES ('1015', '查找所有数据并分页排序', '模块管理', '2018-04-09 13:31:03', '201441402302');
INSERT INTO `t_log` VALUES ('1016', '查找所有数据并分页排序', '模块管理', '2018-04-09 13:37:29', '201441402302');
INSERT INTO `t_log` VALUES ('1017', '登录系统', '系统登录', '2018-04-09 13:38:24', '201441402302');
INSERT INTO `t_log` VALUES ('1018', '查找所有数据并分页排序', '模块管理', '2018-04-09 13:39:46', '201441402302');
INSERT INTO `t_log` VALUES ('1019', '查找所有数据并分页排序', '模块管理', '2018-04-09 13:49:00', '201441402302');
INSERT INTO `t_log` VALUES ('1020', '查找所有数据并分页排序', '模块管理', '2018-04-09 13:49:20', '201441402302');
INSERT INTO `t_log` VALUES ('1021', '登录系统', '系统登录', '2018-04-09 13:52:19', '201441402302');
INSERT INTO `t_log` VALUES ('1022', '查找所有数据并分页排序', '模块管理', '2018-04-09 13:52:41', '201441402302');
INSERT INTO `t_log` VALUES ('1023', '查找所有数据并分页排序', '模块管理', '2018-04-09 13:54:41', '201441402302');
INSERT INTO `t_log` VALUES ('1024', '查找所有数据并分页排序', '模块管理', '2018-04-09 13:54:54', '201441402302');
INSERT INTO `t_log` VALUES ('1025', '查找所有数据并分页排序', '模块管理', '2018-04-09 14:03:12', '201441402302');
INSERT INTO `t_log` VALUES ('1026', '查找所有数据并分页排序', '模块管理', '2018-04-09 14:03:15', '201441402302');
INSERT INTO `t_log` VALUES ('1027', '查找所有数据并分页排序', '模块管理', '2018-04-09 14:03:17', '201441402302');
INSERT INTO `t_log` VALUES ('1028', '查找所有数据并分页排序', '模块管理', '2018-04-09 14:03:20', '201441402302');
INSERT INTO `t_log` VALUES ('1029', '查找所有数据并分页排序', '模块管理', '2018-04-09 17:20:49', '201441402302');
INSERT INTO `t_log` VALUES ('1030', '登录系统', '系统登录', '2018-04-09 17:28:30', '201441402302');
INSERT INTO `t_log` VALUES ('1031', '查找所有数据并分页排序', '模块管理', '2018-04-09 17:28:32', '201441402302');
INSERT INTO `t_log` VALUES ('1032', '登录系统', '系统登录', '2018-04-09 17:30:52', '201441402302');
INSERT INTO `t_log` VALUES ('1033', '查找所有数据并分页排序', '模块管理', '2018-04-09 17:30:57', '201441402302');
INSERT INTO `t_log` VALUES ('1034', '查找所有数据并分页排序', '模块管理', '2018-04-09 17:37:44', '201441402302');
INSERT INTO `t_log` VALUES ('1035', '登录系统', '系统登录', '2018-04-09 17:58:21', '201441402302');
INSERT INTO `t_log` VALUES ('1036', '查找所有数据并分页排序', '模块管理', '2018-04-09 17:58:26', '201441402302');
INSERT INTO `t_log` VALUES ('1037', '登录系统', '系统登录', '2018-04-09 17:59:29', '201441402302');
INSERT INTO `t_log` VALUES ('1038', '查找所有数据并分页排序', '模块管理', '2018-04-09 17:59:31', '201441402302');
INSERT INTO `t_log` VALUES ('1039', '登录系统', '系统登录', '2018-04-09 18:34:32', '201441402302');
INSERT INTO `t_log` VALUES ('1040', '登录系统', '系统登录', '2018-04-09 21:51:03', '201441402302');
INSERT INTO `t_log` VALUES ('1041', '登录系统', '系统登录', '2018-04-09 21:52:10', '201441402302');
INSERT INTO `t_log` VALUES ('1042', '登录系统', '系统登录', '2018-04-09 21:57:19', '201441402302');
INSERT INTO `t_log` VALUES ('1043', '登录系统', '系统登录', '2018-04-09 21:57:43', '201441402302');
INSERT INTO `t_log` VALUES ('1044', '登录系统', '系统登录', '2018-04-09 21:58:10', '201441402302');
INSERT INTO `t_log` VALUES ('1045', '登录系统', '系统登录', '2018-04-09 22:00:27', '201441402302');
INSERT INTO `t_log` VALUES ('1046', '登录系统', '系统登录', '2018-04-09 22:01:24', '201441402302');
INSERT INTO `t_log` VALUES ('1047', '登录系统', '系统登录', '2018-04-09 22:06:56', '201441402302');
INSERT INTO `t_log` VALUES ('1048', '登录系统', '系统登录', '2018-04-09 22:08:40', '201441402302');
INSERT INTO `t_log` VALUES ('1049', '登录系统', '系统登录', '2018-04-09 22:08:58', '201441402302');
INSERT INTO `t_log` VALUES ('1050', '登录系统', '系统登录', '2018-04-09 22:09:21', '201441402302');
INSERT INTO `t_log` VALUES ('1051', '查找所有数据并分页排序', '模块管理', '2018-04-09 22:10:39', '201441402302');
INSERT INTO `t_log` VALUES ('1052', '登录系统', '系统登录', '2018-04-09 22:14:18', '201441402302');
INSERT INTO `t_log` VALUES ('1053', '登录系统', '系统登录', '2018-04-09 22:14:32', '201441402302');
INSERT INTO `t_log` VALUES ('1054', '登录系统', '系统登录', '2018-04-09 22:15:18', '201441402302');
INSERT INTO `t_log` VALUES ('1055', '登录系统', '系统登录', '2018-04-09 22:17:07', '201441402302');
INSERT INTO `t_log` VALUES ('1056', '登录系统', '系统登录', '2018-04-09 22:18:40', '201441402302');
INSERT INTO `t_log` VALUES ('1057', '登录系统', '系统登录', '2018-04-09 22:18:58', '201441402302');
INSERT INTO `t_log` VALUES ('1058', '登录系统', '系统登录', '2018-04-09 22:23:56', '201441402302');
INSERT INTO `t_log` VALUES ('1059', '登录系统', '系统登录', '2018-04-09 22:25:01', '201441402302');
INSERT INTO `t_log` VALUES ('1060', '登录系统', '系统登录', '2018-04-09 22:25:18', '201441402302');
INSERT INTO `t_log` VALUES ('1061', '登录系统', '系统登录', '2018-04-09 22:28:04', '201441402302');
INSERT INTO `t_log` VALUES ('1062', '登录系统', '系统登录', '2018-04-09 22:28:45', '201441402302');
INSERT INTO `t_log` VALUES ('1063', '登录系统', '系统登录', '2018-04-09 22:29:44', '201441402302');
INSERT INTO `t_log` VALUES ('1064', '查找所有数据并分页排序', '模块管理', '2018-04-09 22:35:16', '201441402302');
INSERT INTO `t_log` VALUES ('1065', '查找多条数据并分页排序', '部门管理', '2018-04-09 22:35:20', '201441402302');
INSERT INTO `t_log` VALUES ('1066', '查找多条数据并分页排序', '部门管理', '2018-04-09 22:35:30', '201441402302');
INSERT INTO `t_log` VALUES ('1067', '查找多条数据并分页排序', '部门管理', '2018-04-09 22:35:41', '201441402302');
INSERT INTO `t_log` VALUES ('1068', '登录系统', '系统登录', '2018-04-09 22:43:18', '201441402302');
INSERT INTO `t_log` VALUES ('1069', '登录系统', '系统登录', '2018-04-09 22:44:10', '201441402302');
INSERT INTO `t_log` VALUES ('1070', '登录系统', '系统登录', '2018-04-09 22:47:50', '201441402302');
INSERT INTO `t_log` VALUES ('1071', '登录系统', '系统登录', '2018-04-09 23:02:19', '201441402302');
INSERT INTO `t_log` VALUES ('1072', '登录系统', '系统登录', '2018-04-09 23:27:13', '201441402302');
INSERT INTO `t_log` VALUES ('1073', '登录系统', '系统登录', '2018-04-10 09:33:44', '201441402302');
INSERT INTO `t_log` VALUES ('1074', '登录系统', '系统登录', '2018-04-10 09:33:50', '201441402302');
INSERT INTO `t_log` VALUES ('1075', '登录系统', '系统登录', '2018-04-10 09:34:09', '201441402302');
INSERT INTO `t_log` VALUES ('1076', '登录系统', '系统登录', '2018-04-10 09:34:48', '201441402302');
INSERT INTO `t_log` VALUES ('1077', '登录系统', '系统登录', '2018-04-10 09:36:24', '201441402302');
INSERT INTO `t_log` VALUES ('1078', '查找所有数据并分页排序', '模块管理', '2018-04-10 14:55:47', '201441402302');
INSERT INTO `t_log` VALUES ('1079', '查找所有数据并分页排序', '模块管理', '2018-04-10 14:57:33', '201441402302');
INSERT INTO `t_log` VALUES ('1080', '查找所有数据并分页排序', '模块管理', '2018-04-10 15:01:46', '201441402302');
INSERT INTO `t_log` VALUES ('1081', '查找所有数据并分页排序', '模块管理', '2018-04-10 15:05:46', '201441402302');
INSERT INTO `t_log` VALUES ('1082', '登录系统', '系统登录', '2018-04-10 15:09:07', '201441402302');
INSERT INTO `t_log` VALUES ('1083', '登录系统', '系统登录', '2018-04-10 18:04:54', '201441402302');
INSERT INTO `t_log` VALUES ('1084', '登录系统', '系统登录', '2018-04-10 18:27:49', '201441402302');
INSERT INTO `t_log` VALUES ('1085', '登录系统', '系统登录', '2018-04-10 18:30:40', '201441402302');
INSERT INTO `t_log` VALUES ('1086', '登录系统', '系统登录', '2018-04-10 18:32:47', '201441402302');
INSERT INTO `t_log` VALUES ('1087', '登录系统', '系统登录', '2018-04-10 18:44:01', '201441402302');
INSERT INTO `t_log` VALUES ('1088', '登录系统', '系统登录', '2018-04-10 18:50:07', '201441402302');
INSERT INTO `t_log` VALUES ('1089', '登录系统', '系统登录', '2018-04-10 18:50:10', '201441402302');
INSERT INTO `t_log` VALUES ('1090', '登录系统', '系统登录', '2018-04-10 18:50:34', '201441402302');
INSERT INTO `t_log` VALUES ('1091', '登录系统', '系统登录', '2018-04-10 18:50:41', '201441402302');
INSERT INTO `t_log` VALUES ('1092', '登录系统', '系统登录', '2018-04-10 18:55:31', '201441402302');
INSERT INTO `t_log` VALUES ('1093', '登录系统', '系统登录', '2018-04-10 18:56:34', '201441402302');
INSERT INTO `t_log` VALUES ('1094', '登录系统', '系统登录', '2018-04-10 18:56:39', '201441402302');
INSERT INTO `t_log` VALUES ('1095', '登录系统', '系统登录', '2018-04-10 18:57:01', '201441402302');
INSERT INTO `t_log` VALUES ('1096', '登录系统', '系统登录', '2018-04-10 19:04:23', '201441402302');
INSERT INTO `t_log` VALUES ('1097', '登录系统', '系统登录', '2018-04-10 19:04:58', '201441402302');
INSERT INTO `t_log` VALUES ('1098', '登录系统', '系统登录', '2018-04-10 19:05:34', '201441402302');
INSERT INTO `t_log` VALUES ('1099', '登录系统', '系统登录', '2018-04-10 19:08:48', '201441402302');
INSERT INTO `t_log` VALUES ('1100', '登录系统', '系统登录', '2018-04-10 19:15:50', '201441402302');
INSERT INTO `t_log` VALUES ('1101', '登录系统', '系统登录', '2018-04-10 19:15:58', '201441402302');
INSERT INTO `t_log` VALUES ('1102', '登录系统', '系统登录', '2018-04-10 19:16:13', '201441402302');
INSERT INTO `t_log` VALUES ('1103', '登录系统', '系统登录', '2018-04-10 19:19:25', '201441402302');
INSERT INTO `t_log` VALUES ('1104', '登录系统', '系统登录', '2018-04-10 19:20:40', '201441402302');
INSERT INTO `t_log` VALUES ('1105', '登录系统', '系统登录', '2018-04-10 19:21:05', '201441402302');
INSERT INTO `t_log` VALUES ('1106', '登录系统', '系统登录', '2018-04-10 19:21:27', '201441402302');
INSERT INTO `t_log` VALUES ('1107', '登录系统', '系统登录', '2018-04-10 19:21:35', '201441402302');
INSERT INTO `t_log` VALUES ('1108', '登录系统', '系统登录', '2018-04-10 19:23:26', '201441402302');
INSERT INTO `t_log` VALUES ('1109', '登录系统', '系统登录', '2018-04-10 19:23:46', '201441402302');
INSERT INTO `t_log` VALUES ('1110', '登录系统', '系统登录', '2018-04-10 19:23:49', '201441402302');
INSERT INTO `t_log` VALUES ('1111', '登录系统', '系统登录', '2018-04-10 19:23:53', '201441402302');
INSERT INTO `t_log` VALUES ('1112', '登录系统', '系统登录', '2018-04-10 19:24:19', '201441402302');
INSERT INTO `t_log` VALUES ('1113', '登录系统', '系统登录', '2018-04-10 19:24:40', '201441402302');
INSERT INTO `t_log` VALUES ('1114', '登录系统', '系统登录', '2018-04-10 19:25:19', '201441402302');
INSERT INTO `t_log` VALUES ('1115', '登录系统', '系统登录', '2018-04-10 19:25:29', '201441402302');
INSERT INTO `t_log` VALUES ('1116', '登录系统', '系统登录', '2018-04-10 19:25:43', '201441402302');
INSERT INTO `t_log` VALUES ('1117', '登录系统', '系统登录', '2018-04-10 19:25:47', '201441402302');
INSERT INTO `t_log` VALUES ('1118', '登录系统', '系统登录', '2018-04-10 19:25:52', '201441402302');
INSERT INTO `t_log` VALUES ('1119', '登录系统', '系统登录', '2018-04-10 19:25:58', '201441402302');
INSERT INTO `t_log` VALUES ('1120', '登录系统', '系统登录', '2018-04-10 19:26:20', '201441402302');
INSERT INTO `t_log` VALUES ('1121', '登录系统', '系统登录', '2018-04-10 19:26:23', '201441402302');
INSERT INTO `t_log` VALUES ('1122', '登录系统', '系统登录', '2018-04-10 19:26:46', '201441402302');
INSERT INTO `t_log` VALUES ('1123', '登录系统', '系统登录', '2018-04-10 19:26:49', '201441402302');
INSERT INTO `t_log` VALUES ('1124', '登录系统', '系统登录', '2018-04-10 19:27:24', '201441402302');
INSERT INTO `t_log` VALUES ('1125', '登录系统', '系统登录', '2018-04-10 19:27:53', '201441402302');
INSERT INTO `t_log` VALUES ('1126', '登录系统', '系统登录', '2018-04-10 19:28:22', '201441402302');
INSERT INTO `t_log` VALUES ('1127', '登录系统', '系统登录', '2018-04-10 19:29:00', '201441402302');
INSERT INTO `t_log` VALUES ('1128', '登录系统', '系统登录', '2018-04-10 19:29:07', '201441402302');
INSERT INTO `t_log` VALUES ('1129', '登录系统', '系统登录', '2018-04-10 19:29:16', '201441402302');
INSERT INTO `t_log` VALUES ('1130', '登录系统', '系统登录', '2018-04-10 19:29:33', '201441402302');
INSERT INTO `t_log` VALUES ('1131', '登录系统', '系统登录', '2018-04-10 19:29:35', '201441402302');
INSERT INTO `t_log` VALUES ('1132', '登录系统', '系统登录', '2018-04-10 19:29:59', '201441402302');
INSERT INTO `t_log` VALUES ('1133', '登录系统', '系统登录', '2018-04-10 19:30:25', '201441402302');
INSERT INTO `t_log` VALUES ('1134', '登录系统', '系统登录', '2018-04-10 19:30:39', '201441402302');
INSERT INTO `t_log` VALUES ('1135', '登录系统', '系统登录', '2018-04-10 19:30:48', '201441402302');
INSERT INTO `t_log` VALUES ('1136', '登录系统', '系统登录', '2018-04-10 22:44:19', '201441402302');
INSERT INTO `t_log` VALUES ('1137', '登录系统', '系统登录', '2018-04-11 14:12:32', '201441402302');
INSERT INTO `t_log` VALUES ('1138', '登录系统', '系统登录', '2018-04-11 14:12:37', '201441402302');
INSERT INTO `t_log` VALUES ('1139', '登录系统', '系统登录', '2018-04-11 19:35:24', '201441402302');
INSERT INTO `t_log` VALUES ('1140', '登录系统', '系统登录', '2018-04-11 19:35:33', '201441402302');
INSERT INTO `t_log` VALUES ('1141', '登录系统', '系统登录', '2018-04-11 19:35:34', '201441402302');
INSERT INTO `t_log` VALUES ('1142', '登录系统', '系统登录', '2018-04-11 19:35:36', '201441402302');
INSERT INTO `t_log` VALUES ('1143', '登录系统', '系统登录', '2018-04-11 19:36:01', '201441402302');
INSERT INTO `t_log` VALUES ('1144', '登录系统', '系统登录', '2018-04-11 19:36:19', '201441402302');
INSERT INTO `t_log` VALUES ('1145', '登录系统', '系统登录', '2018-04-12 22:05:12', '201441402302');
INSERT INTO `t_log` VALUES ('1146', '登录系统', '系统登录', '2018-04-12 22:11:01', '201441402302');
INSERT INTO `t_log` VALUES ('1147', '查找所有数据并分页排序', '模块管理', '2018-04-12 22:11:09', '201441402302');
INSERT INTO `t_log` VALUES ('1148', '查找多条数据并分页排序', '部门管理', '2018-04-12 22:47:48', '201441402302');
INSERT INTO `t_log` VALUES ('1149', '登录系统', '系统登录', '2018-04-12 22:53:01', '201441402302');
INSERT INTO `t_log` VALUES ('1150', '查找多条数据并分页排序', '部门管理', '2018-04-12 22:53:11', '201441402302');
INSERT INTO `t_log` VALUES ('1151', '登录系统', '系统登录', '2018-04-12 22:53:45', '201441402302');
INSERT INTO `t_log` VALUES ('1152', '查找多条数据并分页排序', '部门管理', '2018-04-12 22:53:52', '201441402302');
INSERT INTO `t_log` VALUES ('1153', '查找多条数据并分页排序', '部门管理', '2018-04-12 23:23:40', '201441402302');
INSERT INTO `t_log` VALUES ('1154', '查找多条数据并分页排序', '部门管理', '2018-04-12 23:23:48', '201441402302');
INSERT INTO `t_log` VALUES ('1155', '查找多条数据并分页排序', '部门管理', '2018-04-12 23:24:00', '201441402302');
INSERT INTO `t_log` VALUES ('1156', '登录系统', '系统登录', '2018-04-13 21:20:05', '201441402302');
INSERT INTO `t_log` VALUES ('1157', '登录系统', '系统登录', '2018-04-13 21:42:28', '201441402302');
INSERT INTO `t_log` VALUES ('1158', '登录系统', '系统登录', '2018-04-13 21:43:10', '201441402302');
INSERT INTO `t_log` VALUES ('1159', '登录系统', '系统登录', '2018-04-13 21:44:03', '201441402302');
INSERT INTO `t_log` VALUES ('1160', '登录系统', '系统登录', '2018-04-13 21:45:39', '201441402302');
INSERT INTO `t_log` VALUES ('1161', '登录系统', '系统登录', '2018-04-14 10:49:10', '201441402302');
INSERT INTO `t_log` VALUES ('1162', '登录系统', '系统登录', '2018-04-14 15:13:51', '201441402302');
INSERT INTO `t_log` VALUES ('1163', '登录系统', '系统登录', '2018-04-14 15:46:29', '201441402302');
INSERT INTO `t_log` VALUES ('1164', '登录系统', '系统登录', '2018-04-14 17:03:04', '201441402302');
INSERT INTO `t_log` VALUES ('1165', '登录系统', '系统登录', '2018-04-14 17:08:09', '201441402302');
INSERT INTO `t_log` VALUES ('1166', '登录系统', '系统登录', '2018-04-15 09:45:10', '201441402302');
INSERT INTO `t_log` VALUES ('1167', '登录系统', '系统登录', '2018-04-15 10:26:29', '201441402302');
INSERT INTO `t_log` VALUES ('1168', '登录系统', '系统登录', '2018-04-15 10:26:34', '201441402302');
INSERT INTO `t_log` VALUES ('1169', '登录系统', '系统登录', '2018-04-15 10:26:40', '201441402302');
INSERT INTO `t_log` VALUES ('1170', '登录系统', '系统登录', '2018-04-15 10:26:41', '201441402302');
INSERT INTO `t_log` VALUES ('1171', '登录系统', '系统登录', '2018-04-15 10:34:55', '201441402302');
INSERT INTO `t_log` VALUES ('1172', '登录系统', '系统登录', '2018-04-15 10:35:01', '201441402302');
INSERT INTO `t_log` VALUES ('1173', '登录系统', '系统登录', '2018-04-15 10:35:02', '201441402302');
INSERT INTO `t_log` VALUES ('1174', '登录系统', '系统登录', '2018-04-15 10:42:14', '201441402302');
INSERT INTO `t_log` VALUES ('1175', '登录系统', '系统登录', '2018-04-15 10:42:20', '201441402302');
INSERT INTO `t_log` VALUES ('1176', '登录系统', '系统登录', '2018-04-15 10:42:24', '201441402302');
INSERT INTO `t_log` VALUES ('1177', '登录系统', '系统登录', '2018-04-15 10:45:09', '201441402302');
INSERT INTO `t_log` VALUES ('1178', '登录系统', '系统登录', '2018-04-15 10:45:17', '201441402302');
INSERT INTO `t_log` VALUES ('1179', '登录系统', '系统登录', '2018-04-15 10:45:20', '201441402302');
INSERT INTO `t_log` VALUES ('1180', '登录系统', '系统登录', '2018-04-15 11:04:18', '201441402302');
INSERT INTO `t_log` VALUES ('1181', '登录系统', '系统登录', '2018-04-15 11:04:25', '201441402302');
INSERT INTO `t_log` VALUES ('1182', '登录系统', '系统登录', '2018-04-15 11:04:26', '201441402302');
INSERT INTO `t_log` VALUES ('1183', '登录系统', '系统登录', '2018-04-15 13:14:49', '201441402302');
INSERT INTO `t_log` VALUES ('1184', '登录系统', '系统登录', '2018-04-15 13:14:55', '201441402302');
INSERT INTO `t_log` VALUES ('1185', '登录系统', '系统登录', '2018-04-15 13:14:56', '201441402302');
INSERT INTO `t_log` VALUES ('1186', '登录系统', '系统登录', '2018-04-15 13:17:56', '201441402302');
INSERT INTO `t_log` VALUES ('1187', '登录系统', '系统登录', '2018-04-15 13:18:02', '201441402302');
INSERT INTO `t_log` VALUES ('1188', '登录系统', '系统登录', '2018-04-15 13:18:02', '201441402302');
INSERT INTO `t_log` VALUES ('1189', '登录系统', '系统登录', '2018-04-15 13:22:05', '201441402302');
INSERT INTO `t_log` VALUES ('1190', '登录系统', '系统登录', '2018-04-15 13:22:09', '201441402302');
INSERT INTO `t_log` VALUES ('1191', '登录系统', '系统登录', '2018-04-15 13:26:14', '201441402302');
INSERT INTO `t_log` VALUES ('1192', '登录系统', '系统登录', '2018-04-15 13:26:20', '201441402302');
INSERT INTO `t_log` VALUES ('1193', '登录系统', '系统登录', '2018-04-15 13:26:20', '201441402302');
INSERT INTO `t_log` VALUES ('1194', '登录系统', '系统登录', '2018-04-15 13:28:57', '201441402302');
INSERT INTO `t_log` VALUES ('1195', '登录系统', '系统登录', '2018-04-15 13:29:03', '201441402302');
INSERT INTO `t_log` VALUES ('1196', '登录系统', '系统登录', '2018-04-15 13:29:06', '201441402302');
INSERT INTO `t_log` VALUES ('1197', '登录系统', '系统登录', '2018-04-15 13:32:31', '201441402302');
INSERT INTO `t_log` VALUES ('1198', '登录系统', '系统登录', '2018-04-15 13:32:41', '201441402302');
INSERT INTO `t_log` VALUES ('1199', '登录系统', '系统登录', '2018-04-15 13:32:42', '201441402302');
INSERT INTO `t_log` VALUES ('1200', '登录系统', '系统登录', '2018-04-15 13:46:28', '201441402302');
INSERT INTO `t_log` VALUES ('1201', '登录系统', '系统登录', '2018-04-15 13:46:37', '201441402302');
INSERT INTO `t_log` VALUES ('1202', '登录系统', '系统登录', '2018-04-15 13:46:37', '201441402302');
INSERT INTO `t_log` VALUES ('1203', '登录系统', '系统登录', '2018-04-15 13:50:44', '201441402302');
INSERT INTO `t_log` VALUES ('1204', '登录系统', '系统登录', '2018-04-15 13:50:52', '201441402302');
INSERT INTO `t_log` VALUES ('1205', '登录系统', '系统登录', '2018-04-15 13:50:53', '201441402302');
INSERT INTO `t_log` VALUES ('1206', '登录系统', '系统登录', '2018-04-15 14:11:33', '201441402302');
INSERT INTO `t_log` VALUES ('1207', '登录系统', '系统登录', '2018-04-15 14:11:49', '201441402302');
INSERT INTO `t_log` VALUES ('1208', '登录系统', '系统登录', '2018-04-15 14:11:53', '201441402302');
INSERT INTO `t_log` VALUES ('1209', '登录系统', '系统登录', '2018-04-15 14:15:01', '201441402302');
INSERT INTO `t_log` VALUES ('1210', '登录系统', '系统登录', '2018-04-15 14:15:08', '201441402302');
INSERT INTO `t_log` VALUES ('1211', '登录系统', '系统登录', '2018-04-15 14:15:09', '201441402302');
INSERT INTO `t_log` VALUES ('1212', '登录系统', '系统登录', '2018-04-15 14:17:34', '201441402302');
INSERT INTO `t_log` VALUES ('1213', '登录系统', '系统登录', '2018-04-15 14:17:34', '201441402302');
INSERT INTO `t_log` VALUES ('1214', '登录系统', '系统登录', '2018-04-15 14:26:40', '201441402302');
INSERT INTO `t_log` VALUES ('1215', '登录系统', '系统登录', '2018-04-15 14:26:45', '201441402302');
INSERT INTO `t_log` VALUES ('1216', '登录系统', '系统登录', '2018-04-15 14:26:45', '201441402302');
INSERT INTO `t_log` VALUES ('1217', '登录系统', '系统登录', '2018-04-15 14:37:59', '201441402302');
INSERT INTO `t_log` VALUES ('1218', '登录系统', '系统登录', '2018-04-15 14:38:04', '201441402302');
INSERT INTO `t_log` VALUES ('1219', '登录系统', '系统登录', '2018-04-15 14:42:11', '201441402302');
INSERT INTO `t_log` VALUES ('1220', '登录系统', '系统登录', '2018-04-15 14:42:16', '201441402302');
INSERT INTO `t_log` VALUES ('1221', '登录系统', '系统登录', '2018-04-15 14:42:16', '201441402302');
INSERT INTO `t_log` VALUES ('1222', '登录系统', '系统登录', '2018-04-15 14:44:34', '201441402302');
INSERT INTO `t_log` VALUES ('1223', '登录系统', '系统登录', '2018-04-15 14:44:44', '201441402302');
INSERT INTO `t_log` VALUES ('1224', '登录系统', '系统登录', '2018-04-15 14:44:45', '201441402302');
INSERT INTO `t_log` VALUES ('1225', '登录系统', '系统登录', '2018-04-15 14:59:23', '201441402302');
INSERT INTO `t_log` VALUES ('1226', '登录系统', '系统登录', '2018-04-15 14:59:29', '201441402302');
INSERT INTO `t_log` VALUES ('1227', '登录系统', '系统登录', '2018-04-15 14:59:29', '201441402302');
INSERT INTO `t_log` VALUES ('1228', '登录系统', '系统登录', '2018-04-15 15:41:09', '201441402302');
INSERT INTO `t_log` VALUES ('1229', '登录系统', '系统登录', '2018-04-15 15:41:13', '201441402302');
INSERT INTO `t_log` VALUES ('1230', '登录系统', '系统登录', '2018-04-15 15:49:43', '201441402302');
INSERT INTO `t_log` VALUES ('1231', '登录系统', '系统登录', '2018-04-15 15:49:50', '201441402302');
INSERT INTO `t_log` VALUES ('1232', '登录系统', '系统登录', '2018-04-15 15:49:50', '201441402302');
INSERT INTO `t_log` VALUES ('1233', '登录系统', '系统登录', '2018-04-15 15:58:54', '201441402302');
INSERT INTO `t_log` VALUES ('1234', '登录系统', '系统登录', '2018-04-15 15:59:01', '201441402302');
INSERT INTO `t_log` VALUES ('1235', '登录系统', '系统登录', '2018-04-15 15:59:02', '201441402302');
INSERT INTO `t_log` VALUES ('1236', '登录系统', '系统登录', '2018-04-15 16:49:17', '201441402302');
INSERT INTO `t_log` VALUES ('1237', '登录系统', '系统登录', '2018-04-15 17:04:16', '201441402302');
INSERT INTO `t_log` VALUES ('1238', '登录系统', '系统登录', '2018-04-15 17:05:49', '201441402302');
INSERT INTO `t_log` VALUES ('1239', '登录系统', '系统登录', '2018-04-15 17:05:55', '201441402302');
INSERT INTO `t_log` VALUES ('1240', '登录系统', '系统登录', '2018-04-15 21:14:27', '201441402302');
INSERT INTO `t_log` VALUES ('1241', '登录系统', '系统登录', '2018-04-15 21:14:37', '201441402302');
INSERT INTO `t_log` VALUES ('1242', '登录系统', '系统登录', '2018-04-15 21:15:02', '201441402302');
INSERT INTO `t_log` VALUES ('1243', '登录系统', '系统登录', '2018-04-15 21:15:02', '201441402302');
INSERT INTO `t_log` VALUES ('1244', '登录系统', '系统登录', '2018-04-15 21:38:15', '201441402302');
INSERT INTO `t_log` VALUES ('1245', '登录系统', '系统登录', '2018-04-15 22:13:24', '201441402302');
INSERT INTO `t_log` VALUES ('1246', '登录系统', '系统登录', '2018-04-15 22:13:25', '201441402302');
INSERT INTO `t_log` VALUES ('1247', '登录系统', '系统登录', '2018-04-15 22:30:03', '201441402302');
INSERT INTO `t_log` VALUES ('1248', '登录系统', '系统登录', '2018-04-15 22:32:23', '201441402302');
INSERT INTO `t_log` VALUES ('1249', '登录系统', '系统登录', '2018-04-15 23:28:03', '201441402302');
INSERT INTO `t_log` VALUES ('1250', '登录系统', '系统登录', '2018-04-15 23:28:58', '201441402302');
INSERT INTO `t_log` VALUES ('1251', '登录系统', '系统登录', '2018-04-15 23:37:56', '201441402302');
INSERT INTO `t_log` VALUES ('1252', '登录系统', '系统登录', '2018-04-15 23:39:29', '201441402302');
INSERT INTO `t_log` VALUES ('1253', '登录系统', '系统登录', '2018-04-15 23:39:31', '201441402302');
INSERT INTO `t_log` VALUES ('1254', '登录系统', '系统登录', '2018-04-15 23:53:07', '201441402302');
INSERT INTO `t_log` VALUES ('1255', '登录系统', '系统登录', '2018-04-16 00:03:04', '201441402302');
INSERT INTO `t_log` VALUES ('1256', '登录系统', '系统登录', '2018-04-16 00:06:51', '201441402302');
INSERT INTO `t_log` VALUES ('1257', '登录系统', '系统登录', '2018-04-16 09:40:45', '201441402302');
INSERT INTO `t_log` VALUES ('1258', '登录系统', '系统登录', '2018-04-16 09:45:21', '201441402302');
INSERT INTO `t_log` VALUES ('1259', '登录系统', '系统登录', '2018-04-16 15:57:43', '201441402302');
INSERT INTO `t_log` VALUES ('1260', '登录系统', '系统登录', '2018-04-16 17:03:22', '201441402302');
INSERT INTO `t_log` VALUES ('1261', '登录系统', '系统登录', '2018-04-16 17:04:02', '201441402302');
INSERT INTO `t_log` VALUES ('1262', '登录系统', '系统登录', '2018-04-16 17:06:45', '201441402302');
INSERT INTO `t_log` VALUES ('1263', '登录系统', '系统登录', '2018-04-16 17:07:58', '201441402302');
INSERT INTO `t_log` VALUES ('1264', '登录系统', '系统登录', '2018-04-16 17:08:19', '201441402302');
INSERT INTO `t_log` VALUES ('1265', '登录系统', '系统登录', '2018-04-16 17:42:11', '201441402302');
INSERT INTO `t_log` VALUES ('1266', '登录系统', '系统登录', '2018-04-16 17:44:38', '201441402302');
INSERT INTO `t_log` VALUES ('1267', '登录系统', '系统登录', '2018-04-16 17:44:39', '201441402302');
INSERT INTO `t_log` VALUES ('1268', '登录系统', '系统登录', '2018-04-16 17:45:18', '201441402302');
INSERT INTO `t_log` VALUES ('1269', '登录系统', '系统登录', '2018-04-16 17:46:12', '201441402302');
INSERT INTO `t_log` VALUES ('1270', '登录系统', '系统登录', '2018-04-16 17:55:57', '201441402302');
INSERT INTO `t_log` VALUES ('1271', '登录系统', '系统登录', '2018-04-16 18:19:37', '201441402302');
INSERT INTO `t_log` VALUES ('1272', '查找多条数据并分页排序', '部门管理', '2018-04-16 18:19:48', '201441402302');
INSERT INTO `t_log` VALUES ('1273', '查找所有数据并分页排序', '模块管理', '2018-04-16 18:20:18', '201441402302');
INSERT INTO `t_log` VALUES ('1274', '查找所有数据并分页排序', '模块管理', '2018-04-16 18:20:33', '201441402302');
INSERT INTO `t_log` VALUES ('1275', '登录系统', '系统登录', '2018-04-16 18:26:28', '201441402302');
INSERT INTO `t_log` VALUES ('1276', '登录系统', '系统登录', '2018-04-16 18:27:17', '201441402302');
INSERT INTO `t_log` VALUES ('1277', '登录系统', '系统登录', '2018-04-16 18:27:21', '201441402302');
INSERT INTO `t_log` VALUES ('1278', '登录系统', '系统登录', '2018-04-17 14:33:06', '2013');
INSERT INTO `t_log` VALUES ('1279', '登录系统', '系统登录', '2018-04-17 14:59:57', '2013');
INSERT INTO `t_log` VALUES ('1280', '登录系统', '系统登录', '2018-04-17 15:42:46', '2014');
INSERT INTO `t_log` VALUES ('1281', '登录系统', '系统登录', '2018-04-17 15:43:06', '2014');
INSERT INTO `t_log` VALUES ('1282', '登录系统', '系统登录', '2018-04-17 15:43:07', '2014');
INSERT INTO `t_log` VALUES ('1283', '登录系统', '系统登录', '2018-04-17 15:43:25', '2014');
INSERT INTO `t_log` VALUES ('1284', '登录系统', '系统登录', '2018-04-17 15:43:25', '2014');
INSERT INTO `t_log` VALUES ('1285', '登录系统', '系统登录', '2018-04-17 15:43:59', '2014');
INSERT INTO `t_log` VALUES ('1286', '登录系统', '系统登录', '2018-04-17 15:47:24', '2014');
INSERT INTO `t_log` VALUES ('1287', '登录系统', '系统登录', '2018-04-17 15:57:01', '2014');
INSERT INTO `t_log` VALUES ('1288', '登录系统', '系统登录', '2018-04-17 16:06:52', '2014');
INSERT INTO `t_log` VALUES ('1289', '登录系统', '系统登录', '2018-04-17 16:09:56', '2014');
INSERT INTO `t_log` VALUES ('1290', '登录系统', '系统登录', '2018-04-17 17:06:17', '2014');
INSERT INTO `t_log` VALUES ('1291', '登录系统', '系统登录', '2018-04-17 18:20:42', '2014');
INSERT INTO `t_log` VALUES ('1292', '登录系统', '系统登录', '2018-04-17 18:28:09', '2014');
INSERT INTO `t_log` VALUES ('1293', '登录系统', '系统登录', '2018-04-17 18:44:51', '2014');
INSERT INTO `t_log` VALUES ('1294', '登录系统', '系统登录', '2018-04-17 19:32:47', '2014');
INSERT INTO `t_log` VALUES ('1295', '登录系统', '系统登录', '2018-04-17 20:20:00', '2014');
INSERT INTO `t_log` VALUES ('1296', '登录系统', '系统登录', '2018-04-17 20:20:31', '2014');
INSERT INTO `t_log` VALUES ('1297', '登录系统', '系统登录', '2018-04-17 20:26:44', '2014');
INSERT INTO `t_log` VALUES ('1298', '登录系统', '系统登录', '2018-04-17 20:27:10', '2014');
INSERT INTO `t_log` VALUES ('1299', '登录系统', '系统登录', '2018-04-18 13:50:40', '2014');
INSERT INTO `t_log` VALUES ('1300', '登录系统', '系统登录', '2018-04-18 13:53:24', '2014');
INSERT INTO `t_log` VALUES ('1301', '登录系统', '系统登录', '2018-04-18 13:53:25', '2014');
INSERT INTO `t_log` VALUES ('1302', '登录系统', '系统登录', '2018-04-18 13:54:17', '2014');
INSERT INTO `t_log` VALUES ('1303', '登录系统', '系统登录', '2018-04-18 13:57:40', '2014');
INSERT INTO `t_log` VALUES ('1304', '登录系统', '系统登录', '2018-04-18 13:57:42', '2014');
INSERT INTO `t_log` VALUES ('1305', '登录系统', '系统登录', '2018-04-18 13:58:00', '2014');
INSERT INTO `t_log` VALUES ('1306', '登录系统', '系统登录', '2018-04-18 13:58:04', '2014');
INSERT INTO `t_log` VALUES ('1307', '登录系统', '系统登录', '2018-04-18 14:59:46', '2014');
INSERT INTO `t_log` VALUES ('1308', '登录系统', '系统登录', '2018-04-18 15:00:26', '2014');
INSERT INTO `t_log` VALUES ('1309', '登录系统', '系统登录', '2018-04-18 15:27:02', '2014');
INSERT INTO `t_log` VALUES ('1310', '登录系统', '系统登录', '2018-04-18 15:27:06', '2014');
INSERT INTO `t_log` VALUES ('1311', '登录系统', '系统登录', '2018-04-18 15:29:53', '2014');
INSERT INTO `t_log` VALUES ('1312', '登录系统', '系统登录', '2018-04-18 15:43:20', '2014');
INSERT INTO `t_log` VALUES ('1313', '登录系统', '系统登录', '2018-04-18 17:32:04', '2014');
INSERT INTO `t_log` VALUES ('1314', '登录系统', '系统登录', '2018-04-18 17:36:45', '2014');
INSERT INTO `t_log` VALUES ('1315', '登录系统', '系统登录', '2018-04-18 17:39:23', '2014');
INSERT INTO `t_log` VALUES ('1316', '登录系统', '系统登录', '2018-04-18 17:44:29', '2014');
INSERT INTO `t_log` VALUES ('1317', '登录系统', '系统登录', '2018-04-18 18:51:44', '2014');
INSERT INTO `t_log` VALUES ('1318', '登录系统', '系统登录', '2018-04-18 18:55:13', '2014');
INSERT INTO `t_log` VALUES ('1319', '登录系统', '系统登录', '2018-04-18 19:00:58', '2014');
INSERT INTO `t_log` VALUES ('1320', '登录系统', '系统登录', '2018-04-18 19:02:08', '2014');
INSERT INTO `t_log` VALUES ('1321', '查找多条数据并分页排序', '部门管理', '2018-04-18 19:12:49', '2014');
INSERT INTO `t_log` VALUES ('1322', '查找多条数据并分页排序', '部门管理', '2018-04-18 19:12:54', '2014');
INSERT INTO `t_log` VALUES ('1323', '查找所有数据并分页排序', '模块管理', '2018-04-18 19:12:56', '2014');
INSERT INTO `t_log` VALUES ('1324', '登录系统', '系统登录', '2018-04-18 19:15:49', '2014');
INSERT INTO `t_log` VALUES ('1325', '登录系统', '系统登录', '2018-04-18 19:28:05', '2014');
INSERT INTO `t_log` VALUES ('1326', '登录系统', '系统登录', '2018-04-18 19:28:17', '2014');
INSERT INTO `t_log` VALUES ('1327', '登录系统', '系统登录', '2018-04-18 19:30:08', '2014');
INSERT INTO `t_log` VALUES ('1328', '登录系统', '系统登录', '2018-04-18 19:30:32', '2014');
INSERT INTO `t_log` VALUES ('1329', '登录系统', '系统登录', '2018-04-18 19:30:52', '2014');
INSERT INTO `t_log` VALUES ('1330', '登录系统', '系统登录', '2018-04-18 19:31:15', '2014');
INSERT INTO `t_log` VALUES ('1331', '登录系统', '系统登录', '2018-04-18 19:31:28', '2014');
INSERT INTO `t_log` VALUES ('1332', '登录系统', '系统登录', '2018-04-18 19:35:21', '2014');
INSERT INTO `t_log` VALUES ('1333', '登录系统', '系统登录', '2018-04-18 22:44:14', '2014');
INSERT INTO `t_log` VALUES ('1334', '登录系统', '系统登录', '2018-04-18 22:57:19', '2014');
INSERT INTO `t_log` VALUES ('1335', '登录系统', '系统登录', '2018-04-18 23:03:34', '2014');
INSERT INTO `t_log` VALUES ('1336', '查找所有数据并分页排序', '模块管理', '2018-04-18 23:14:51', '2014');
INSERT INTO `t_log` VALUES ('1337', '登录系统', '系统登录', '2018-04-18 23:16:46', '2014');
INSERT INTO `t_log` VALUES ('1338', '登录系统', '系统登录', '2018-04-18 23:25:46', '2014');
INSERT INTO `t_log` VALUES ('1339', '登录系统', '系统登录', '2018-04-18 23:29:58', '2014');
INSERT INTO `t_log` VALUES ('1340', '登录系统', '系统登录', '2018-04-18 23:31:37', '2014');
INSERT INTO `t_log` VALUES ('1341', '登录系统', '系统登录', '2018-04-18 23:31:59', '2014');
INSERT INTO `t_log` VALUES ('1342', '登录系统', '系统登录', '2018-04-18 23:38:56', '2014');
INSERT INTO `t_log` VALUES ('1343', '登录系统', '系统登录', '2018-04-19 09:46:07', '2014');
INSERT INTO `t_log` VALUES ('1344', '登录系统', '系统登录', '2018-04-19 09:46:57', '2014');
INSERT INTO `t_log` VALUES ('1345', '登录系统', '系统登录', '2018-04-19 09:47:07', '2014');
INSERT INTO `t_log` VALUES ('1346', '登录系统', '系统登录', '2018-04-19 09:47:31', '2014');
INSERT INTO `t_log` VALUES ('1347', '登录系统', '系统登录', '2018-04-19 09:47:52', '2014');
INSERT INTO `t_log` VALUES ('1348', '登录系统', '系统登录', '2018-04-19 09:48:09', '2014');
INSERT INTO `t_log` VALUES ('1349', '登录系统', '系统登录', '2018-04-19 09:48:11', '2014');
INSERT INTO `t_log` VALUES ('1350', '登录系统', '系统登录', '2018-04-19 09:48:27', '2014');
INSERT INTO `t_log` VALUES ('1351', '登录系统', '系统登录', '2018-04-19 09:48:48', '2014');
INSERT INTO `t_log` VALUES ('1352', '查找所有数据并分页排序', '模块管理', '2018-04-19 09:48:53', '2014');
INSERT INTO `t_log` VALUES ('1353', '查找所有数据并分页排序', '模块管理', '2018-04-19 09:49:41', '2014');
INSERT INTO `t_log` VALUES ('1354', '查找所有数据并分页排序', '模块管理', '2018-04-19 10:01:05', '2014');
INSERT INTO `t_log` VALUES ('1355', '登录系统', '系统登录', '2018-04-19 10:02:15', '2014');
INSERT INTO `t_log` VALUES ('1356', '查找所有数据并分页排序', '模块管理', '2018-04-19 10:02:19', '2014');
INSERT INTO `t_log` VALUES ('1357', '登录系统', '系统登录', '2018-04-19 10:23:45', '2014');
INSERT INTO `t_log` VALUES ('1358', '登录系统', '系统登录', '2018-04-19 10:27:20', '2014');
INSERT INTO `t_log` VALUES ('1359', '登录系统', '系统登录', '2018-04-19 11:03:15', '2014');
INSERT INTO `t_log` VALUES ('1360', '登录系统', '系统登录', '2018-04-19 13:29:30', '2014');
INSERT INTO `t_log` VALUES ('1361', '修改密码', '用户管理', '2018-04-19 13:32:03', '2014');
INSERT INTO `t_log` VALUES ('1362', '修改密码', '用户管理', '2018-04-19 13:32:19', '2014');
INSERT INTO `t_log` VALUES ('1363', '登录系统', '系统登录', '2018-04-19 13:39:04', '2014');
INSERT INTO `t_log` VALUES ('1364', '修改密码', '用户管理', '2018-04-19 13:39:21', '2014');
INSERT INTO `t_log` VALUES ('1365', '登录系统', '系统登录', '2018-04-19 13:44:51', '2014');
INSERT INTO `t_log` VALUES ('1366', '修改密码', '用户管理', '2018-04-19 13:45:06', '2014');
INSERT INTO `t_log` VALUES ('1367', '修改密码', '用户管理', '2018-04-19 13:46:09', '2014');
INSERT INTO `t_log` VALUES ('1368', '登录系统', '系统登录', '2018-04-19 13:49:56', '2014');
INSERT INTO `t_log` VALUES ('1369', '修改密码', '用户管理', '2018-04-19 13:51:36', '2014');
INSERT INTO `t_log` VALUES ('1370', '修改密码', '用户管理', '2018-04-19 13:51:47', '2014');
INSERT INTO `t_log` VALUES ('1371', '修改密码', '用户管理', '2018-04-19 13:51:55', '2014');
INSERT INTO `t_log` VALUES ('1372', '修改密码', '用户管理', '2018-04-19 13:52:02', '2014');
INSERT INTO `t_log` VALUES ('1373', '修改密码', '用户管理', '2018-04-19 13:54:11', '2014');
INSERT INTO `t_log` VALUES ('1374', '修改密码', '用户管理', '2018-04-19 13:54:19', '2014');
INSERT INTO `t_log` VALUES ('1375', '修改密码', '用户管理', '2018-04-19 13:54:34', '2014');
INSERT INTO `t_log` VALUES ('1376', '登录系统', '系统登录', '2018-04-19 13:55:06', '2014');
INSERT INTO `t_log` VALUES ('1377', '修改密码', '用户管理', '2018-04-19 13:55:43', '2014');
INSERT INTO `t_log` VALUES ('1378', '查找所有数据并分页排序', '模块管理', '2018-04-19 15:04:03', '2014');
INSERT INTO `t_log` VALUES ('1379', '登录系统', '系统登录', '2018-04-19 15:26:27', '2014');
INSERT INTO `t_log` VALUES ('1380', '登录系统', '系统登录', '2018-04-19 15:28:47', '2014');
INSERT INTO `t_log` VALUES ('1381', '登录系统', '系统登录', '2018-04-19 15:32:05', '2014');
INSERT INTO `t_log` VALUES ('1382', '登录系统', '系统登录', '2018-04-19 15:43:10', '2014');
INSERT INTO `t_log` VALUES ('1383', '登录系统', '系统登录', '2018-04-19 16:04:37', '2014');
INSERT INTO `t_log` VALUES ('1384', '登录系统', '系统登录', '2018-04-19 16:10:57', '2014');
INSERT INTO `t_log` VALUES ('1385', '登录系统', '系统登录', '2018-04-19 16:56:14', '2014');
INSERT INTO `t_log` VALUES ('1386', '登录系统', '系统登录', '2018-04-19 17:02:49', '2014');
INSERT INTO `t_log` VALUES ('1387', '登录系统', '系统登录', '2018-04-19 17:07:48', '2014');
INSERT INTO `t_log` VALUES ('1388', '登录系统', '系统登录', '2018-04-19 17:21:44', '2014');

-- ----------------------------
-- Table structure for `t_module`
-- ----------------------------
DROP TABLE IF EXISTS `t_module`;
CREATE TABLE `t_module` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `belong` varchar(255) DEFAULT NULL,
  `cpermission` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createCollege` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `ctype` int(11) DEFAULT NULL,
  `curl` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `isLeaf` int(11) DEFAULT NULL,
  `layerNum` int(11) DEFAULT NULL,
  `moduleName` varchar(255) DEFAULT NULL,
  `orderNo` int(11) DEFAULT NULL,
  `parentId` varchar(255) DEFAULT NULL,
  `parentName` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_module
-- ----------------------------
INSERT INTO `t_module` VALUES ('1', '系统管理1', null, null, null, null, null, null, null, null, null, '用户管理1', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('2', '系统管理2', null, null, null, null, null, null, null, null, null, '用户管理2', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('3', '系统管理3', null, null, null, null, null, null, null, null, null, '用户管理3', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('4', '系统管理4', null, null, null, null, null, null, null, null, null, '用户管理4', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('5', '系统管理5', null, null, null, null, null, null, null, null, null, '用户管理5', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('6', '系统管理6', null, null, null, null, null, null, null, null, null, '用户管理6', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('7', '系统管理7', null, null, null, null, null, null, null, null, null, '用户管理7', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('8', '系统管理8', null, null, null, null, null, null, null, null, null, '用户管理8', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('9', '系统管理9', null, null, null, null, null, null, null, null, null, '用户管理9', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('10', '系统管理10', null, null, null, null, null, null, null, null, null, '用户管理10', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('11', '系统管理11', null, null, null, null, null, null, null, null, null, '用户管理11', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('12', '系统管理12', null, null, null, null, null, null, null, null, null, '用户管理12', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('13', '系统管理13', null, null, null, null, null, null, null, null, null, '用户管理13', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('14', '系统管理14', null, null, null, null, null, null, null, null, null, '用户管理14', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('15', '系统管理15', null, null, null, null, null, null, null, null, null, '用户管理15', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('16', '系统管理16', null, null, null, null, null, null, null, null, null, '用户管理16', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('17', '系统管理17', null, null, null, null, null, null, null, null, null, '用户管理17', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('18', '系统管理18', null, null, null, null, null, null, null, null, null, '用户管理18', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('19', '系统管理19', null, null, null, null, null, null, null, null, null, '用户管理19', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('20', '系统管理20', null, null, null, null, null, null, null, null, null, '用户管理20', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('21', '系统管理21', null, null, null, null, null, null, null, null, null, '用户管理21', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('22', '系统管理22', null, null, null, null, null, null, null, null, null, '用户管理22', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('23', '系统管理23', null, null, null, null, null, null, null, null, null, '用户管理23', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('24', '系统管理24', null, null, null, null, null, null, null, null, null, '用户管理24', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('25', '系统管理25', null, null, null, null, null, null, null, null, null, '用户管理25', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('26', '系统管理26', null, null, null, null, null, null, null, null, null, '用户管理26', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('27', '系统管理27', null, null, null, null, null, null, null, null, null, '用户管理27', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('28', '系统管理28', null, null, null, null, null, null, null, null, null, '用户管理28', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('29', '系统管理29', null, null, null, null, null, null, null, null, null, '用户管理29', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('30', '系统管理30', null, null, null, null, null, null, null, null, null, '用户管理30', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('31', '系统管理31', null, null, null, null, null, null, null, null, null, '用户管理31', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('32', '系统管理32', null, null, null, null, null, null, null, null, null, '用户管理32', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('33', '系统管理33', null, null, null, null, null, null, null, null, null, '用户管理33', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('34', '系统管理34', null, null, null, null, null, null, null, null, null, '用户管理34', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('35', '系统管理35', null, null, null, null, null, null, null, null, null, '用户管理35', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('36', '系统管理36', null, null, null, null, null, null, null, null, null, '用户管理36', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('37', '系统管理37', null, null, null, null, null, null, null, null, null, '用户管理37', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('38', '系统管理38', null, null, null, null, null, null, null, null, null, '用户管理38', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('39', '系统管理39', null, null, null, null, null, null, null, null, null, '用户管理39', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('40', '系统管理40', null, null, null, null, null, null, null, null, null, '用户管理40', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('41', '系统管理41', null, null, null, null, null, null, null, null, null, '用户管理41', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('42', '系统管理42', null, null, null, null, null, null, null, null, null, '用户管理42', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('43', '系统管理43', null, null, null, null, null, null, null, null, null, '用户管理43', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('44', '系统管理44', null, null, null, null, null, null, null, null, null, '用户管理44', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('45', '系统管理45', null, null, null, null, null, null, null, null, null, '用户管理45', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('46', '系统管理46', null, null, null, null, null, null, null, null, null, '用户管理46', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('47', '系统管理47', null, null, null, null, null, null, null, null, null, '用户管理47', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('48', '系统管理48', null, null, null, null, null, null, null, null, null, '用户管理48', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('49', '系统管理49', null, null, null, null, null, null, null, null, null, '用户管理49', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('50', '系统管理50', null, null, null, null, null, null, null, null, null, '用户管理50', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('51', '系统管理51', null, null, null, null, null, null, null, null, null, '用户管理51', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('52', '系统管理52', null, null, null, null, null, null, null, null, null, '用户管理52', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('53', '系统管理53', null, null, null, null, null, null, null, null, null, '用户管理53', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('54', '系统管理54', null, null, null, null, null, null, null, null, null, '用户管理54', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('55', '系统管理55', null, null, null, null, null, null, null, null, null, '用户管理55', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('56', '系统管理56', null, null, null, null, null, null, null, null, null, '用户管理56', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('57', '系统管理57', null, null, null, null, null, null, null, null, null, '用户管理57', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('58', '系统管理58', null, null, null, null, null, null, null, null, null, '用户管理58', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('59', '系统管理59', null, null, null, null, null, null, null, null, null, '用户管理59', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('60', '系统管理60', null, null, null, null, null, null, null, null, null, '用户管理60', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('61', '系统管理61', null, null, null, null, null, null, null, null, null, '用户管理61', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('62', '系统管理62', null, null, null, null, null, null, null, null, null, '用户管理62', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('63', '系统管理63', null, null, null, null, null, null, null, null, null, '用户管理63', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('64', '系统管理64', null, null, null, null, null, null, null, null, null, '用户管理64', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('65', '系统管理65', null, null, null, null, null, null, null, null, null, '用户管理65', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('66', '系统管理66', null, null, null, null, null, null, null, null, null, '用户管理66', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('67', '系统管理67', null, null, null, null, null, null, null, null, null, '用户管理67', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('68', '系统管理68', null, null, null, null, null, null, null, null, null, '用户管理68', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('69', '系统管理69', null, null, null, null, null, null, null, null, null, '用户管理69', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('70', '系统管理70', null, null, null, null, null, null, null, null, null, '用户管理70', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('71', '系统管理71', null, null, null, null, null, null, null, null, null, '用户管理71', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('72', '系统管理72', null, null, null, null, null, null, null, null, null, '用户管理72', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('73', '系统管理73', null, null, null, null, null, null, null, null, null, '用户管理73', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('74', '系统管理74', null, null, null, null, null, null, null, null, null, '用户管理74', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('75', '系统管理75', null, null, null, null, null, null, null, null, null, '用户管理75', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('76', '系统管理76', null, null, null, null, null, null, null, null, null, '用户管理76', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('77', '系统管理77', null, null, null, null, null, null, null, null, null, '用户管理77', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('78', '系统管理78', null, null, null, null, null, null, null, null, null, '用户管理78', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('79', '系统管理79', null, null, null, null, null, null, null, null, null, '用户管理79', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('80', '系统管理80', null, null, null, null, null, null, null, null, null, '用户管理80', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('81', '系统管理81', null, null, null, null, null, null, null, null, null, '用户管理81', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('82', '系统管理82', null, null, null, null, null, null, null, null, null, '用户管理82', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('83', '系统管理83', null, null, null, null, null, null, null, null, null, '用户管理83', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('84', '系统管理84', null, null, null, null, null, null, null, null, null, '用户管理84', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('85', '系统管理85', null, null, null, null, null, null, null, null, null, '用户管理85', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('86', '系统管理86', null, null, null, null, null, null, null, null, null, '用户管理86', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('87', '系统管理87', null, null, null, null, null, null, null, null, null, '用户管理87', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('88', '系统管理88', null, null, null, null, null, null, null, null, null, '用户管理88', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('89', '系统管理89', null, null, null, null, null, null, null, null, null, '用户管理89', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('90', '系统管理90', null, null, null, null, null, null, null, null, null, '用户管理90', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('91', '系统管理91', null, null, null, null, null, null, null, null, null, '用户管理91', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('92', '系统管理92', null, null, null, null, null, null, null, null, null, '用户管理92', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('93', '系统管理93', null, null, null, null, null, null, null, null, null, '用户管理93', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('94', '系统管理94', null, null, null, null, null, null, null, null, null, '用户管理94', null, null, null, null, '0', null, null);
INSERT INTO `t_module` VALUES ('95', '系统管理95', null, null, null, null, null, null, null, null, null, '用户管理95', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('96', '系统管理96', null, null, null, null, null, null, null, null, null, '用户管理96', null, null, null, null, '1', null, null);
INSERT INTO `t_module` VALUES ('97', '系统管理97', null, null, null, null, null, null, null, null, null, '用户管理97', null, null, null, null, '0', null, null);
INSERT INTO `t_module` VALUES ('101', '321', '321', '312', '312', '2018-05-09 02:23:28', '321', '3213', '213', '2133', '3213', '3123', '321', null, '213', '312', '1', '3213', '2018-05-18 02:23:28');
INSERT INTO `t_module` VALUES ('102', '2', '2', '2', '2', '2018-06-17 02:11:03', '2', '2', '2', '2', '2', '2', '2', null, '2', '2', '0', '2', '2018-06-17 02:11:03');
INSERT INTO `t_module` VALUES ('103', '3', '3', '3', '3', '2018-06-17 02:11:14', '3', '3', '3', '3', '33', '3', '3', null, '3', '3', '1', '3', '2018-06-17 02:11:14');
INSERT INTO `t_module` VALUES ('104', '系统管理1', null, null, null, null, null, null, null, null, null, '用户管理1', null, null, null, null, '0', null, null);

-- ----------------------------
-- Table structure for `t_module_t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_module_t_role`;
CREATE TABLE `t_module_t_role` (
  `modules_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL,
  PRIMARY KEY (`modules_id`,`roles_id`),
  KEY `FK9k6p8m1571yckgysfs9jo8ida` (`roles_id`),
  CONSTRAINT `FK7iekhdvbhfcm5gaamsc0sfbu` FOREIGN KEY (`modules_id`) REFERENCES `t_module` (`id`),
  CONSTRAINT `FK9k6p8m1571yckgysfs9jo8ida` FOREIGN KEY (`roles_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_module_t_role
-- ----------------------------

-- ----------------------------
-- Table structure for `t_opinion`
-- ----------------------------
DROP TABLE IF EXISTS `t_opinion`;
CREATE TABLE `t_opinion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `fbtime` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `remark` varchar(255) DEFAULT '感谢你的意见，我们会努力做的更好！',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_opinion
-- ----------------------------
INSERT INTO `t_opinion` VALUES ('2', 'aaa', '3213', '2018-04-17 15:41:04', '32', '0', '感谢你的意见，我们会努力做的更好！');
INSERT INTO `t_opinion` VALUES ('3', 'aaa', '3213', '2018-04-17 15:44:16', '3213', '1', '感谢你的意见，我们会努力做的更好！');

-- ----------------------------
-- Table structure for `t_organization`
-- ----------------------------
DROP TABLE IF EXISTS `t_organization`;
CREATE TABLE `t_organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `organization` varchar(255) DEFAULT NULL,
  `xjorganization` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT '/upload/logo.jpg',
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_organization
-- ----------------------------
INSERT INTO `t_organization` VALUES ('1', '计算机与网络安全学院志愿服务站', '向日葵义教志愿服务队', '/upload/logo.jpg', '1');
INSERT INTO `t_organization` VALUES ('2', '校志愿中心', '宏远篮球志愿服务队', '/upload/logo.jpg', '1');
INSERT INTO `t_organization` VALUES ('3', '电子工程与智能化学院志愿服务站', '雨露助残志愿服务队', '/upload/logo.jpg', '1');
INSERT INTO `t_organization` VALUES ('4', '机械工程学院志愿服务站', '七彩课堂专项志愿服务队', '/upload/logo.jpg', '1');
INSERT INTO `t_organization` VALUES ('5', '生态环境与建筑工程学院志愿服务站', '莞昕志愿服务队', '/upload/logo.jpg', '1');
INSERT INTO `t_organization` VALUES ('7', '经济与管理学院志愿服务站', null, '/upload/logo.jpg', '1');
INSERT INTO `t_organization` VALUES ('8', '文学与传媒学院志愿服务站', 'E-go志愿服务队', '/upload/logo.jpg', '1');
INSERT INTO `t_organization` VALUES ('9', '法律与社会工作学院志愿服务站', null, '/upload/logo.jpg', '1');
INSERT INTO `t_organization` VALUES ('10', '教育学院志愿服务站', null, '/upload/logo.jpg', '1');
INSERT INTO `t_organization` VALUES ('11', '化学工程与能源技术学院志愿服务站', null, '/upload/logo.jpg', '1');
INSERT INTO `t_organization` VALUES ('12', '中法联合学院志愿服务站', null, '/upload/logo.jpg', '1');
INSERT INTO `t_organization` VALUES ('13', '马克思主义学院志愿服务站', null, '/upload/logo.jpg', '1');
INSERT INTO `t_organization` VALUES ('14', '继续教育学院志愿服务站', null, '/upload/logo.jpg', '1');
INSERT INTO `t_organization` VALUES ('16', '粤台产业科技学院志愿服务站', null, '/upload/logo.jpg', '1');
INSERT INTO `t_organization` VALUES ('118', '国际学院志愿服务站', null, '/upload/logo.jpg', '1');

-- ----------------------------
-- Table structure for `t_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '描述1', null, 'token1', 'user/delete1', null);
INSERT INTO `t_permission` VALUES ('2', '描述2', null, 'token2', 'user/delete2', null);
INSERT INTO `t_permission` VALUES ('3', '描述3', null, 'token3', 'user/delete3', null);
INSERT INTO `t_permission` VALUES ('4', '描述4', null, 'token4', 'user/delete4', null);
INSERT INTO `t_permission` VALUES ('5', '描述5', null, 'token5', 'user/delete5', null);
INSERT INTO `t_permission` VALUES ('6', '描述6', null, 'token6', 'user/delete6', null);
INSERT INTO `t_permission` VALUES ('7', '描述7', null, 'token7', 'user/delete7', null);
INSERT INTO `t_permission` VALUES ('8', '描述8', null, 'token8', 'user/delete8', null);
INSERT INTO `t_permission` VALUES ('9', '描述9', null, 'token9', 'user/delete9', null);
INSERT INTO `t_permission` VALUES ('10', '描述10', null, 'token10', 'user/delete10', null);
INSERT INTO `t_permission` VALUES ('11', '描述11', null, 'token11', 'user/delete11', null);
INSERT INTO `t_permission` VALUES ('12', '描述12', null, 'token12', 'user/delete12', null);
INSERT INTO `t_permission` VALUES ('13', '描述13', null, 'token13', 'user/delete13', null);
INSERT INTO `t_permission` VALUES ('14', '描述14', null, 'token14', 'user/delete14', null);
INSERT INTO `t_permission` VALUES ('15', '描述15', null, 'token15', 'user/delete15', null);
INSERT INTO `t_permission` VALUES ('16', '描述16', null, 'token16', 'user/delete16', null);
INSERT INTO `t_permission` VALUES ('17', '描述17', null, 'token17', 'user/delete17', null);
INSERT INTO `t_permission` VALUES ('18', '描述18', null, 'token18', 'user/delete18', null);
INSERT INTO `t_permission` VALUES ('19', '描述19', null, 'token19', 'user/delete19', null);
INSERT INTO `t_permission` VALUES ('20', '描述20', null, 'token20', 'user/delete20', null);
INSERT INTO `t_permission` VALUES ('21', '描述21', null, 'token21', 'user/delete21', null);
INSERT INTO `t_permission` VALUES ('22', '描述22', null, 'token22', 'user/delete22', null);
INSERT INTO `t_permission` VALUES ('23', '描述23', null, 'token23', 'user/delete23', null);
INSERT INTO `t_permission` VALUES ('24', '描述24', null, 'token24', 'user/delete24', null);
INSERT INTO `t_permission` VALUES ('25', '描述25', null, 'token25', 'user/delete25', null);
INSERT INTO `t_permission` VALUES ('26', '描述26', null, 'token26', 'user/delete26', null);
INSERT INTO `t_permission` VALUES ('27', '描述27', null, 'token27', 'user/delete27', null);
INSERT INTO `t_permission` VALUES ('28', '描述28', null, 'token28', 'user/delete28', null);
INSERT INTO `t_permission` VALUES ('29', '描述29', null, 'token29', 'user/delete29', null);
INSERT INTO `t_permission` VALUES ('30', '描述30', null, 'token30', 'user/delete30', null);
INSERT INTO `t_permission` VALUES ('31', '描述31', null, 'token31', 'user/delete31', null);
INSERT INTO `t_permission` VALUES ('32', '描述32', null, 'token32', 'user/delete32', null);
INSERT INTO `t_permission` VALUES ('33', '描述33', null, 'token33', 'user/delete33', null);
INSERT INTO `t_permission` VALUES ('34', '描述34', null, 'token34', 'user/delete34', null);
INSERT INTO `t_permission` VALUES ('35', '描述35', null, 'token35', 'user/delete35', null);
INSERT INTO `t_permission` VALUES ('36', '描述36', null, 'token36', 'user/delete36', null);
INSERT INTO `t_permission` VALUES ('37', '描述37', null, 'token37', 'user/delete37', null);
INSERT INTO `t_permission` VALUES ('38', '描述38', null, 'token38', 'user/delete38', null);
INSERT INTO `t_permission` VALUES ('39', '描述39', null, 'token39', 'user/delete39', null);
INSERT INTO `t_permission` VALUES ('40', '描述40', null, 'token40', 'user/delete40', null);
INSERT INTO `t_permission` VALUES ('41', '描述41', null, 'token41', 'user/delete41', null);
INSERT INTO `t_permission` VALUES ('42', '描述42', null, 'token42', 'user/delete42', null);
INSERT INTO `t_permission` VALUES ('43', '描述43', null, 'token43', 'user/delete43', null);
INSERT INTO `t_permission` VALUES ('44', '描述44', null, 'token44', 'user/delete44', null);
INSERT INTO `t_permission` VALUES ('45', '描述45', null, 'token45', 'user/delete45', null);
INSERT INTO `t_permission` VALUES ('46', '描述46', null, 'token46', 'user/delete46', null);
INSERT INTO `t_permission` VALUES ('47', '描述47', null, 'token47', 'user/delete47', null);
INSERT INTO `t_permission` VALUES ('48', '描述48', null, 'token48', 'user/delete48', null);
INSERT INTO `t_permission` VALUES ('49', '描述49', null, 'token49', 'user/delete49', null);
INSERT INTO `t_permission` VALUES ('50', '描述50', null, 'token50', 'user/delete50', null);
INSERT INTO `t_permission` VALUES ('51', '描述51', null, 'token51', 'user/delete51', null);
INSERT INTO `t_permission` VALUES ('52', '描述52', null, 'token52', 'user/delete52', null);
INSERT INTO `t_permission` VALUES ('53', '描述53', null, 'token53', 'user/delete53', null);
INSERT INTO `t_permission` VALUES ('54', '描述54', null, 'token54', 'user/delete54', null);
INSERT INTO `t_permission` VALUES ('55', '描述55', null, 'token55', 'user/delete55', null);
INSERT INTO `t_permission` VALUES ('56', '描述56', null, 'token56', 'user/delete56', null);
INSERT INTO `t_permission` VALUES ('57', '描述57', null, 'token57', 'user/delete57', null);
INSERT INTO `t_permission` VALUES ('58', '描述58', null, 'token58', 'user/delete58', null);
INSERT INTO `t_permission` VALUES ('59', '描述59', null, 'token59', 'user/delete59', null);
INSERT INTO `t_permission` VALUES ('60', '描述60', null, 'token60', 'user/delete60', null);
INSERT INTO `t_permission` VALUES ('61', '描述61', null, 'token61', 'user/delete61', null);
INSERT INTO `t_permission` VALUES ('62', '描述62', null, 'token62', 'user/delete62', null);
INSERT INTO `t_permission` VALUES ('63', '描述63', null, 'token63', 'user/delete63', null);
INSERT INTO `t_permission` VALUES ('64', '描述64', null, 'token64', 'user/delete64', null);
INSERT INTO `t_permission` VALUES ('65', '描述65', null, 'token65', 'user/delete65', null);
INSERT INTO `t_permission` VALUES ('66', '描述66', null, 'token66', 'user/delete66', null);
INSERT INTO `t_permission` VALUES ('67', '描述67', null, 'token67', 'user/delete67', null);
INSERT INTO `t_permission` VALUES ('68', '描述68', null, 'token68', 'user/delete68', null);
INSERT INTO `t_permission` VALUES ('69', '描述69', null, 'token69', 'user/delete69', null);
INSERT INTO `t_permission` VALUES ('70', '描述70', null, 'token70', 'user/delete70', null);
INSERT INTO `t_permission` VALUES ('71', '描述71', null, 'token71', 'user/delete71', null);
INSERT INTO `t_permission` VALUES ('72', '描述72', null, 'token72', 'user/delete72', null);
INSERT INTO `t_permission` VALUES ('73', '描述73', null, 'token73', 'user/delete73', null);
INSERT INTO `t_permission` VALUES ('74', '描述74', null, 'token74', 'user/delete74', null);
INSERT INTO `t_permission` VALUES ('75', '描述75', null, 'token75', 'user/delete75', null);
INSERT INTO `t_permission` VALUES ('76', '描述76', null, 'token76', 'user/delete76', null);
INSERT INTO `t_permission` VALUES ('77', '描述77', null, 'token77', 'user/delete77', null);
INSERT INTO `t_permission` VALUES ('78', '描述78', null, 'token78', 'user/delete78', null);
INSERT INTO `t_permission` VALUES ('79', '描述79', null, 'token79', 'user/delete79', null);
INSERT INTO `t_permission` VALUES ('80', '描述80', null, 'token80', 'user/delete80', null);
INSERT INTO `t_permission` VALUES ('81', '描述81', null, 'token81', 'user/delete81', null);
INSERT INTO `t_permission` VALUES ('82', '描述82', null, 'token82', 'user/delete82', null);
INSERT INTO `t_permission` VALUES ('83', '描述83', null, 'token83', 'user/delete83', null);
INSERT INTO `t_permission` VALUES ('84', '描述84', null, 'token84', 'user/delete84', null);
INSERT INTO `t_permission` VALUES ('85', '描述85', null, 'token85', 'user/delete85', null);
INSERT INTO `t_permission` VALUES ('86', '描述86', null, 'token86', 'user/delete86', null);
INSERT INTO `t_permission` VALUES ('87', '描述87', null, 'token87', 'user/delete87', null);
INSERT INTO `t_permission` VALUES ('88', '描述88', null, 'token88', 'user/delete88', null);
INSERT INTO `t_permission` VALUES ('89', '描述89', null, 'token89', 'user/delete89', null);
INSERT INTO `t_permission` VALUES ('90', '描述90', null, 'token90', 'user/delete90', null);
INSERT INTO `t_permission` VALUES ('91', '描述91', null, 'token91', 'user/delete91', null);
INSERT INTO `t_permission` VALUES ('92', '描述92', null, 'token92', 'user/delete92', null);
INSERT INTO `t_permission` VALUES ('93', '描述93', null, 'token93', 'user/delete93', null);
INSERT INTO `t_permission` VALUES ('94', '描述94', null, 'token94', 'user/delete94', null);
INSERT INTO `t_permission` VALUES ('95', '描述95', null, 'token95', 'user/delete95', null);
INSERT INTO `t_permission` VALUES ('96', '描述96', null, 'token96', 'user/delete96', null);
INSERT INTO `t_permission` VALUES ('101', '312', null, '321', '333', '1');
INSERT INTO `t_permission` VALUES ('102', null, null, null, '332', '1');
INSERT INTO `t_permission` VALUES ('103', 'ewqe', null, 'ewqee', '1232', '1');
INSERT INTO `t_permission` VALUES ('104', '描述1', null, 'token1', 'user/delete1', null);
INSERT INTO `t_permission` VALUES ('105', '描述2', null, 'token2', 'user/delete2', null);

-- ----------------------------
-- Table structure for `t_permission_t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_permission_t_role`;
CREATE TABLE `t_permission_t_role` (
  `permission_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `FKon4rkrj5gfcaj0usj3jwu5bcv` (`role_id`),
  KEY `FKfsd5074sxjqn25onen0ason7a` (`permission_id`),
  CONSTRAINT `FKfsd5074sxjqn25onen0ason7a` FOREIGN KEY (`permission_id`) REFERENCES `t_permission` (`id`),
  CONSTRAINT `FKon4rkrj5gfcaj0usj3jwu5bcv` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission_t_role
-- ----------------------------

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createBy` varchar(255) DEFAULT NULL,
  `createCollege` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `orderNo` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('2', null, null, null, '1', null, '管理员', null, null, null);
INSERT INTO `t_role` VALUES ('3', null, null, '2018-02-09 20:47:42', null, '备注1', '管理员1', null, null, null);
INSERT INTO `t_role` VALUES ('4', null, null, '2018-02-09 20:47:43', null, '备注2', '管理员2', null, null, null);
INSERT INTO `t_role` VALUES ('5', null, null, '2018-02-09 20:47:43', null, '备注3', '管理员3', null, null, null);
INSERT INTO `t_role` VALUES ('6', null, null, '2018-02-09 20:47:43', null, '备注4', '管理员4', null, null, null);
INSERT INTO `t_role` VALUES ('7', null, null, '2018-02-09 20:47:43', null, '备注5', '管理员5', null, null, null);
INSERT INTO `t_role` VALUES ('8', null, null, '2018-02-09 20:47:43', null, '备注6', '管理员6', null, null, null);
INSERT INTO `t_role` VALUES ('9', null, null, '2018-02-09 20:47:43', null, '备注7', '管理员7', null, null, null);
INSERT INTO `t_role` VALUES ('10', null, null, '2018-02-09 20:47:43', null, '备注8', '管理员8', null, null, null);
INSERT INTO `t_role` VALUES ('11', null, null, '2018-02-09 20:47:43', null, '备注9', '管理员9', null, null, null);
INSERT INTO `t_role` VALUES ('12', null, null, '2018-02-09 20:47:43', null, '备注10', '管理员10', null, null, null);
INSERT INTO `t_role` VALUES ('13', null, null, '2018-02-09 20:47:43', null, '备注11', '管理员11', null, null, null);
INSERT INTO `t_role` VALUES ('14', null, null, '2018-02-09 20:47:43', null, '备注12', '管理员12', null, null, null);
INSERT INTO `t_role` VALUES ('15', null, null, '2018-02-09 20:47:43', null, '备注13', '管理员13', null, null, null);
INSERT INTO `t_role` VALUES ('16', null, null, '2018-02-09 20:47:43', null, '备注14', '管理员14', null, null, null);
INSERT INTO `t_role` VALUES ('17', null, null, '2018-02-09 20:47:43', null, '备注15', '管理员15', null, null, null);
INSERT INTO `t_role` VALUES ('18', null, null, '2018-02-09 20:47:43', null, '备注16', '管理员16', null, null, null);
INSERT INTO `t_role` VALUES ('19', null, null, '2018-02-09 20:47:43', null, '备注17', '管理员17', null, null, null);
INSERT INTO `t_role` VALUES ('20', null, null, '2018-02-09 20:47:44', null, '备注18', '管理员18', null, null, null);
INSERT INTO `t_role` VALUES ('21', null, null, '2018-02-09 20:47:44', null, '备注19', '管理员19', null, null, null);
INSERT INTO `t_role` VALUES ('22', null, null, '2018-02-09 20:47:44', null, '备注20', '管理员20', null, null, null);
INSERT INTO `t_role` VALUES ('23', null, null, '2018-02-09 20:47:44', null, '备注21', '管理员21', null, null, null);
INSERT INTO `t_role` VALUES ('24', null, null, '2018-02-09 20:47:44', null, '备注22', '管理员22', null, null, null);
INSERT INTO `t_role` VALUES ('25', null, null, '2018-02-09 20:47:44', null, '备注23', '管理员23', null, null, null);
INSERT INTO `t_role` VALUES ('26', null, null, '2018-02-09 20:47:44', null, '备注24', '管理员24', null, null, null);
INSERT INTO `t_role` VALUES ('27', null, null, '2018-02-09 20:47:44', null, '备注25', '管理员25', null, null, null);
INSERT INTO `t_role` VALUES ('28', null, null, '2018-02-09 20:47:44', null, '备注26', '管理员26', null, null, null);
INSERT INTO `t_role` VALUES ('29', null, null, '2018-02-09 20:47:44', null, '备注27', '管理员27', null, null, null);
INSERT INTO `t_role` VALUES ('30', null, null, '2018-02-09 20:47:44', null, '备注28', '管理员28', null, null, null);
INSERT INTO `t_role` VALUES ('31', null, null, '2018-02-09 20:47:44', null, '备注29', '管理员29', null, null, null);
INSERT INTO `t_role` VALUES ('32', null, null, '2018-02-09 20:47:44', null, '备注30', '管理员30', null, null, null);
INSERT INTO `t_role` VALUES ('33', null, null, '2018-02-09 20:47:44', null, '备注31', '管理员31', null, null, null);
INSERT INTO `t_role` VALUES ('34', null, null, '2018-02-09 20:47:44', null, '备注32', '管理员32', null, null, null);
INSERT INTO `t_role` VALUES ('35', null, null, '2018-02-09 20:47:44', null, '备注33', '管理员33', null, null, null);
INSERT INTO `t_role` VALUES ('36', null, null, '2018-02-09 20:47:44', null, '备注34', '管理员34', null, null, null);
INSERT INTO `t_role` VALUES ('37', null, null, '2018-02-09 20:47:44', null, '备注35', '管理员35', null, null, null);
INSERT INTO `t_role` VALUES ('38', null, null, '2018-02-09 20:47:44', null, '备注36', '管理员36', null, null, null);
INSERT INTO `t_role` VALUES ('39', null, null, '2018-02-09 20:47:44', null, '备注37', '管理员37', null, null, null);
INSERT INTO `t_role` VALUES ('40', null, null, '2018-02-09 20:47:44', null, '备注38', '管理员38', null, null, null);
INSERT INTO `t_role` VALUES ('41', null, null, '2018-02-09 20:47:45', null, '备注39', '管理员39', null, null, null);
INSERT INTO `t_role` VALUES ('42', null, null, '2018-02-09 20:47:45', null, '备注40', '管理员40', null, null, null);
INSERT INTO `t_role` VALUES ('43', null, null, '2018-02-09 20:47:45', null, '备注41', '管理员41', null, null, null);
INSERT INTO `t_role` VALUES ('44', null, null, '2018-02-09 20:47:45', null, '备注42', '管理员42', null, null, null);
INSERT INTO `t_role` VALUES ('45', null, null, '2018-02-09 20:47:45', null, '备注43', '管理员43', null, null, null);
INSERT INTO `t_role` VALUES ('46', null, null, '2018-02-09 20:47:45', null, '备注44', '管理员44', null, null, null);
INSERT INTO `t_role` VALUES ('47', null, null, '2018-02-09 20:47:45', null, '备注45', '管理员45', null, null, null);
INSERT INTO `t_role` VALUES ('48', null, null, '2018-02-09 20:47:45', null, '备注46', '管理员46', null, null, null);
INSERT INTO `t_role` VALUES ('49', null, null, '2018-02-09 20:47:45', null, '备注47', '管理员47', null, null, null);
INSERT INTO `t_role` VALUES ('50', null, null, '2018-02-09 20:47:45', null, '备注48', '管理员48', null, null, null);
INSERT INTO `t_role` VALUES ('51', null, null, '2018-02-09 20:47:45', null, '备注49', '管理员49', null, null, null);
INSERT INTO `t_role` VALUES ('52', null, null, '2018-02-09 20:47:45', null, '备注50', '管理员50', null, null, null);
INSERT INTO `t_role` VALUES ('53', null, null, '2018-02-09 20:47:45', null, '备注51', '管理员51', null, null, null);
INSERT INTO `t_role` VALUES ('54', null, null, '2018-02-09 20:47:45', null, '备注52', '管理员52', null, null, null);
INSERT INTO `t_role` VALUES ('55', null, null, '2018-02-09 20:47:45', null, '备注53', '管理员53', null, null, null);
INSERT INTO `t_role` VALUES ('56', null, null, '2018-02-09 20:47:45', null, '备注54', '管理员54', null, null, null);
INSERT INTO `t_role` VALUES ('57', null, null, '2018-02-09 20:47:45', null, '备注55', '管理员55', null, null, null);
INSERT INTO `t_role` VALUES ('58', null, null, '2018-02-09 20:47:45', null, '备注56', '管理员56', null, null, null);
INSERT INTO `t_role` VALUES ('59', null, null, '2018-02-09 20:47:45', null, '备注57', '管理员57', null, null, null);
INSERT INTO `t_role` VALUES ('60', null, null, '2018-02-09 20:47:46', null, '备注58', '管理员58', null, null, null);
INSERT INTO `t_role` VALUES ('61', null, null, '2018-02-09 20:47:46', null, '备注59', '管理员59', null, null, null);
INSERT INTO `t_role` VALUES ('62', null, null, '2018-02-09 20:47:46', null, '备注60', '管理员60', null, null, null);
INSERT INTO `t_role` VALUES ('63', null, null, '2018-02-09 20:47:46', null, '备注61', '管理员61', null, null, null);
INSERT INTO `t_role` VALUES ('64', null, null, '2018-02-09 20:47:46', null, '备注62', '管理员62', null, null, null);
INSERT INTO `t_role` VALUES ('65', null, null, '2018-02-09 20:47:46', null, '备注63', '管理员63', null, null, null);
INSERT INTO `t_role` VALUES ('66', null, null, '2018-02-09 20:47:46', null, '备注64', '管理员64', null, null, null);
INSERT INTO `t_role` VALUES ('67', null, null, '2018-02-09 20:47:46', null, '备注65', '管理员65', null, null, null);
INSERT INTO `t_role` VALUES ('68', null, null, '2018-02-09 20:47:46', null, '备注66', '管理员66', null, null, null);
INSERT INTO `t_role` VALUES ('69', null, null, '2018-02-09 20:47:46', null, '备注67', '管理员67', null, null, null);
INSERT INTO `t_role` VALUES ('70', null, null, '2018-02-09 20:47:46', null, '备注68', '管理员68', null, null, null);
INSERT INTO `t_role` VALUES ('71', null, null, '2018-02-09 20:47:46', null, '备注69', '管理员69', null, null, null);
INSERT INTO `t_role` VALUES ('72', null, null, '2018-02-09 20:47:46', null, '备注70', '管理员70', null, null, null);
INSERT INTO `t_role` VALUES ('73', null, null, '2018-02-09 20:47:46', null, '备注71', '管理员71', null, null, null);
INSERT INTO `t_role` VALUES ('74', null, null, '2018-02-09 20:47:46', null, '备注72', '管理员72', null, null, null);
INSERT INTO `t_role` VALUES ('75', null, null, '2018-02-09 20:47:46', null, '备注73', '管理员73', null, null, null);
INSERT INTO `t_role` VALUES ('76', null, null, '2018-02-09 20:47:46', null, '备注74', '管理员74', null, null, null);
INSERT INTO `t_role` VALUES ('77', null, null, '2018-02-09 20:47:46', null, '备注75', '管理员75', null, null, null);
INSERT INTO `t_role` VALUES ('78', null, null, '2018-02-09 20:47:46', null, '备注76', '管理员76', null, null, null);
INSERT INTO `t_role` VALUES ('79', null, null, '2018-02-09 20:47:46', null, '备注77', '管理员77', null, null, null);
INSERT INTO `t_role` VALUES ('80', null, null, '2018-02-09 20:47:47', null, '备注78', '管理员78', null, null, null);
INSERT INTO `t_role` VALUES ('81', null, null, '2018-02-09 20:47:47', null, '备注79', '管理员79', null, null, null);
INSERT INTO `t_role` VALUES ('82', null, null, '2018-02-09 20:47:47', null, '备注80', '管理员80', null, null, null);
INSERT INTO `t_role` VALUES ('83', null, null, '2018-02-09 20:47:47', null, '备注81', '管理员81', null, null, null);
INSERT INTO `t_role` VALUES ('84', null, null, '2018-02-09 20:47:47', null, '备注82', '管理员82', null, null, null);
INSERT INTO `t_role` VALUES ('85', null, null, '2018-02-09 20:47:47', null, '备注83', '管理员83', null, null, null);
INSERT INTO `t_role` VALUES ('86', null, null, '2018-02-09 20:47:47', null, '备注84', '管理员84', null, null, null);
INSERT INTO `t_role` VALUES ('87', null, null, '2018-02-09 20:47:47', null, '备注85', '管理员85', null, null, null);
INSERT INTO `t_role` VALUES ('88', null, null, '2018-02-09 20:47:47', null, '备注86', '管理员86', null, null, null);
INSERT INTO `t_role` VALUES ('89', null, null, '2018-02-09 20:47:47', null, '备注87', '管理员87', null, null, null);
INSERT INTO `t_role` VALUES ('90', null, null, '2018-02-09 20:47:47', null, '备注88', '管理员88', null, null, null);
INSERT INTO `t_role` VALUES ('91', null, null, '2018-02-09 20:47:47', null, '备注89', '管理员89', null, null, null);
INSERT INTO `t_role` VALUES ('92', null, null, '2018-02-09 20:47:47', null, '备注90', '管理员90', null, null, null);
INSERT INTO `t_role` VALUES ('93', null, null, '2018-02-09 20:47:47', null, '备注91', '管理员91', null, null, null);
INSERT INTO `t_role` VALUES ('94', null, null, '2018-02-09 20:47:47', null, '备注92', '管理员92', null, null, null);
INSERT INTO `t_role` VALUES ('95', null, null, '2018-02-09 20:47:47', null, '备注93', '管理员93', null, null, null);
INSERT INTO `t_role` VALUES ('96', null, null, '2018-02-09 20:47:47', null, '备注94', '管理员94', null, null, null);
INSERT INTO `t_role` VALUES ('100', '3213', '3123', '2018-06-14 02:22:13', '3213', '3123', '231', '312', '2018-06-14 02:22:13', '1');
INSERT INTO `t_role` VALUES ('103', '1', '1', '2018-06-17 02:00:28', '1', '1', '321321', '', '2018-06-17 02:00:28', '1');

-- ----------------------------
-- Table structure for `t_role_t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_role_t_user`;
CREATE TABLE `t_role_t_user` (
  `roles_id` bigint(20) NOT NULL,
  `users_id` bigint(20) NOT NULL,
  PRIMARY KEY (`roles_id`,`users_id`),
  KEY `FKblo6xqq7lc4gk02xyqbfjbn6j` (`users_id`),
  CONSTRAINT `FKblo6xqq7lc4gk02xyqbfjbn6j` FOREIGN KEY (`users_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FKemgect4ojb065j1vx68m7rxxf` FOREIGN KEY (`roles_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_t_user
-- ----------------------------

-- ----------------------------
-- Table structure for `t_share`
-- ----------------------------
DROP TABLE IF EXISTS `t_share`;
CREATE TABLE `t_share` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `endResp` varchar(255) DEFAULT NULL,
  `fbtime` datetime DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `resp` varchar(255) DEFAULT NULL,
  `respName` varchar(255) DEFAULT NULL,
  `state` int(11) unsigned DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `zan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_share
-- ----------------------------
INSERT INTO `t_share` VALUES ('1', '张三1', 'sanzhang1', '312121', '2018-04-10 18:20:22', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('2', '张三2', 'sanzhang2', '312122', '2018-04-10 18:20:23', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('3', '张三3', 'sanzhang3', '312123', '2018-04-10 18:20:23', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('4', '张三4', 'sanzhang4', '312124', '2018-04-10 18:20:23', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('5', '张三5', 'sanzhang5', '312125', '2018-04-10 18:20:24', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('6', '张三6', 'sanzhang6', '312126', '2018-04-10 18:20:24', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('7', '张三7', 'sanzhang7', '312127', '2018-04-10 18:20:24', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('8', '张三8', 'sanzhang8', '312128', '2018-04-10 18:20:24', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('9', '张三9', 'sanzhang9', '312129', '2018-04-10 18:20:25', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('10', '张三10', 'sanzhang10', '3121210', '2018-04-10 18:20:25', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('11', '张三11', 'sanzhang11', '3121211', '2018-04-10 18:20:25', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('12', '张三12', 'sanzhang12', '3121212', '2018-04-10 18:20:25', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('13', '张三13', 'sanzhang13', '3121213', '2018-04-10 18:20:25', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('14', '张三14', 'sanzhang14', '3121214', '2018-04-10 18:20:25', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('15', '张三15', 'sanzhang15', '3121215', '2018-04-10 18:20:25', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('16', '张三16', 'sanzhang16', '3121216', '2018-04-10 18:20:25', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('17', '张三17', 'sanzhang17', '3121217', '2018-04-10 18:20:26', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('18', '张三18', 'sanzhang18', '3121218', '2018-04-10 18:20:26', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('19', '张三19', 'sanzhang19', '3121219', '2018-04-10 18:20:26', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('20', '张三20', 'sanzhang20', '3121220', '2018-04-10 18:20:26', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('21', '张三21', 'sanzhang21', '3121221', '2018-04-10 18:20:26', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('22', '张三22', 'sanzhang22', '3121222', '2018-04-10 18:20:26', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('23', '张三23', 'sanzhang23', '3121223', '2018-04-10 18:20:26', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('24', '张三24', 'sanzhang24', '3121224', '2018-04-10 18:20:26', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('25', '张三25', 'sanzhang25', '3121225', '2018-04-10 18:20:26', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('26', '张三26', 'sanzhang26', '3121226', '2018-04-10 18:20:26', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('27', '张三27', 'sanzhang27', '3121227', '2018-04-10 18:20:26', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('28', '张三28', 'sanzhang28', '3121228', '2018-04-10 18:20:26', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('29', '张三29', 'sanzhang29', '3121229', '2018-04-10 18:20:26', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('30', '张三30', 'sanzhang30', '3121230', '2018-04-10 18:20:27', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('31', '张三31', 'sanzhang31', '3121231', '2018-04-10 18:20:27', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('32', '张三32', 'sanzhang32', '3121232', '2018-04-10 18:20:27', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('33', '张三33', 'sanzhang33', '3121233', '2018-04-10 18:20:27', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('34', '张三34', 'sanzhang34', '3121234', '2018-04-10 18:20:27', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('35', '张三35', 'sanzhang35', '3121235', '2018-04-10 18:20:27', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('36', '张三36', 'sanzhang36', '3121236', '2018-04-10 18:20:27', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('37', '张三37', 'sanzhang37', '3121237', '2018-04-10 18:20:27', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('38', '张三38', 'sanzhang38', '3121238', '2018-04-10 18:20:27', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('39', '张三39', 'sanzhang39', '3121239', '2018-04-10 18:20:27', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('40', '张三40', 'sanzhang40', '3121240', '2018-04-10 18:20:27', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('41', '张三41', 'sanzhang41', '3121241', '2018-04-10 18:20:27', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('42', '张三42', 'sanzhang42', '3121242', '2018-04-10 18:20:27', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('43', '张三43', 'sanzhang43', '3121243', '2018-04-10 18:20:27', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('44', '张三44', 'sanzhang44', '3121244', '2018-04-10 18:20:27', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('45', '张三45', 'sanzhang45', '3121245', '2018-04-10 18:20:27', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('46', '张三46', 'sanzhang46', '3121246', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('47', '张三47', 'sanzhang47', '3121247', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('48', '张三48', 'sanzhang48', '3121248', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('49', '张三49', 'sanzhang49', '3121249', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('50', '张三50', 'sanzhang50', '3121250', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('51', '张三51', 'sanzhang51', '3121251', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('52', '张三52', 'sanzhang52', '3121252', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('53', '张三53', 'sanzhang53', '3121253', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('54', '张三54', 'sanzhang54', '3121254', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('55', '张三55', 'sanzhang55', '3121255', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('56', '张三56', 'sanzhang56', '3121256', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('57', '张三57', 'sanzhang57', '3121257', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('58', '张三58', 'sanzhang58', '3121258', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('59', '张三59', 'sanzhang59', '3121259', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('60', '张三60', 'sanzhang60', '3121260', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('61', '张三61', 'sanzhang61', '3121261', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('62', '张三62', 'sanzhang62', '3121262', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('63', '张三63', 'sanzhang63', '3121263', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('64', '张三64', 'sanzhang64', '3121264', '2018-04-10 18:20:28', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('65', '张三65', 'sanzhang65', '3121265', '2018-04-10 18:20:29', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('66', '张三66', 'sanzhang66', '3121266', '2018-04-10 18:20:29', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('67', '张三67', 'sanzhang67', '3121267', '2018-04-10 18:20:29', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('68', '张三68', 'sanzhang68', '3121268', '2018-04-10 18:20:29', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('69', '张三69', 'sanzhang69', '3121269', '2018-04-10 18:20:29', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('70', '张三70', 'sanzhang70', '3121270', '2018-04-10 18:20:29', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('71', '张三71', 'sanzhang71', '3121271', '2018-04-10 18:20:29', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('72', '张三72', 'sanzhang72', '3121272', '2018-04-10 18:20:29', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('73', '张三73', 'sanzhang73', '3121273', '2018-04-10 18:20:29', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('74', '张三74', 'sanzhang74', '3121274', '2018-04-10 18:20:29', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('75', '张三75', 'sanzhang75', '3121275', '2018-04-10 18:20:29', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('76', '张三76', 'sanzhang76', '3121276', '2018-04-10 18:20:29', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('77', '张三77', 'sanzhang77', '3121277', '2018-04-10 18:20:29', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('78', '张三78', 'sanzhang78', '3121278', '2018-04-10 18:20:29', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('79', '张三79', 'sanzhang79', '3121279', '2018-04-10 18:20:29', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('80', '张三80', 'sanzhang80', '3121280', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('81', '张三81', 'sanzhang81', '3121281', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('82', '张三82', 'sanzhang82', '3121282', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('83', '张三83', 'sanzhang83', '3121283', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('84', '张三84', 'sanzhang84', '3121284', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('85', '张三85', 'sanzhang85', '3121285', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('86', '张三86', 'sanzhang86', '3121286', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('87', '张三87', 'sanzhang87', '3121287', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('88', '张三88', 'sanzhang88', '3121288', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('89', '张三89', 'sanzhang89', '3121289', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('90', '张三90', 'sanzhang90', '3121290', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('91', '张三91', 'sanzhang91', '3121291', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('92', '张三92', 'sanzhang92', '3121292', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('93', '张三93', 'sanzhang93', '3121293', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('94', '张三94', 'sanzhang94', '3121294', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('95', '张三95', 'sanzhang95', '3121295', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('96', '张三96', 'sanzhang96', '3121296', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('97', '张三97', 'sanzhang97', '3121297', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('98', '张三98', 'sanzhang98', '3121298', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('99', '张三99', 'sanzhang99', '3121299', '2018-04-10 18:20:30', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('100', '张三100', 'sanzhang100', '31212100', '2018-04-10 18:20:31', null, '3123', null, null, '张三丰', null);
INSERT INTO `t_share` VALUES ('101', '张三1', 'sanzhang1', '312121', '2018-04-12 22:15:18', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('102', '张三2', 'sanzhang2', '312122', '2018-04-12 22:15:18', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('103', '张三3', 'sanzhang3', '312123', '2018-04-12 22:15:18', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('104', '张三4', 'sanzhang4', '312124', '2018-04-12 22:15:18', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('105', '张三5', 'sanzhang5', '312125', '2018-04-12 22:15:18', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('106', '张三6', 'sanzhang6', '312126', '2018-04-12 22:15:18', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('107', '张三7', 'sanzhang7', '312127', '2018-04-12 22:15:18', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('108', '张三8', 'sanzhang8', '312128', '2018-04-12 22:15:18', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('109', '张三9', 'sanzhang9', '312129', '2018-04-12 22:15:18', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('110', '张三10', 'sanzhang10', '3121210', '2018-04-12 22:15:18', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('111', '张三11', 'sanzhang11', '3121211', '2018-04-12 22:15:18', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('112', '张三12', 'sanzhang12', '3121212', '2018-04-12 22:15:18', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('113', '张三13', 'sanzhang13', '3121213', '2018-04-12 22:15:19', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('114', '张三14', 'sanzhang14', '3121214', '2018-04-12 22:15:19', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('115', '张三15', 'sanzhang15', '3121215', '2018-04-12 22:15:19', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('116', '张三16', 'sanzhang16', '3121216', '2018-04-12 22:15:19', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('117', '张三17', 'sanzhang17', '3121217', '2018-04-12 22:15:19', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('118', '张三18', 'sanzhang18', '3121218', '2018-04-12 22:15:19', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('119', '张三19', 'sanzhang19', '3121219', '2018-04-12 22:15:19', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('120', '张三20', 'sanzhang20', '3121220', '2018-04-12 22:15:19', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('121', '张三21', 'sanzhang21', '3121221', '2018-04-12 22:15:19', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('122', '张三22', 'sanzhang22', '3121222', '2018-04-12 22:15:19', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('123', '张三23', 'sanzhang23', '3121223', '2018-04-12 22:15:19', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('124', '张三24', 'sanzhang24', '3121224', '2018-04-12 22:15:19', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('125', '张三25', 'sanzhang25', '3121225', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('126', '张三26', 'sanzhang26', '3121226', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('127', '张三27', 'sanzhang27', '3121227', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('128', '张三28', 'sanzhang28', '3121228', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('129', '张三29', 'sanzhang29', '3121229', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('130', '张三30', 'sanzhang30', '3121230', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('131', '张三31', 'sanzhang31', '3121231', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('132', '张三32', 'sanzhang32', '3121232', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('133', '张三33', 'sanzhang33', '3121233', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('134', '张三34', 'sanzhang34', '3121234', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('135', '张三35', 'sanzhang35', '3121235', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('136', '张三36', 'sanzhang36', '3121236', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('137', '张三37', 'sanzhang37', '3121237', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('138', '张三38', 'sanzhang38', '3121238', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('139', '张三39', 'sanzhang39', '3121239', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('140', '张三40', 'sanzhang40', '3121240', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('141', '张三41', 'sanzhang41', '3121241', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('142', '张三42', 'sanzhang42', '3121242', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('143', '张三43', 'sanzhang43', '3121243', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('144', '张三44', 'sanzhang44', '3121244', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('145', '张三45', 'sanzhang45', '3121245', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('146', '张三46', 'sanzhang46', '3121246', '2018-04-12 22:15:20', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('147', '张三47', 'sanzhang47', '3121247', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('148', '张三48', 'sanzhang48', '3121248', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('149', '张三49', 'sanzhang49', '3121249', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('150', '张三50', 'sanzhang50', '3121250', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('151', '张三51', 'sanzhang51', '3121251', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('152', '张三52', 'sanzhang52', '3121252', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('153', '张三53', 'sanzhang53', '3121253', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('154', '张三54', 'sanzhang54', '3121254', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('155', '张三55', 'sanzhang55', '3121255', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('156', '张三56', 'sanzhang56', '3121256', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('157', '张三57', 'sanzhang57', '3121257', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('158', '张三58', 'sanzhang58', '3121258', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('159', '张三59', 'sanzhang59', '3121259', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('160', '张三60', 'sanzhang60', '3121260', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('161', '张三61', 'sanzhang61', '3121261', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('162', '张三62', 'sanzhang62', '3121262', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('163', '张三63', 'sanzhang63', '3121263', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('164', '张三64', 'sanzhang64', '3121264', '2018-04-12 22:15:21', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('165', '张三65', 'sanzhang65', '3121265', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('166', '张三66', 'sanzhang66', '3121266', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('167', '张三67', 'sanzhang67', '3121267', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('168', '张三68', 'sanzhang68', '3121268', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('169', '张三69', 'sanzhang69', '3121269', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('170', '张三70', 'sanzhang70', '3121270', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('171', '张三71', 'sanzhang71', '3121271', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('172', '张三72', 'sanzhang72', '3121272', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('173', '张三73', 'sanzhang73', '3121273', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('174', '张三74', 'sanzhang74', '3121274', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('175', '张三75', 'sanzhang75', '3121275', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('176', '张三76', 'sanzhang76', '3121276', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('177', '张三77', 'sanzhang77', '3121277', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('178', '张三78', 'sanzhang78', '3121278', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('179', '张三79', 'sanzhang79', '3121279', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('180', '张三80', 'sanzhang80', '3121280', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('181', '张三81', 'sanzhang81', '3121281', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('182', '张三82', 'sanzhang82', '3121282', '2018-04-12 22:15:22', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('183', '张三83', 'sanzhang83', '3121283', '2018-04-12 22:15:23', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('184', '张三84', 'sanzhang84', '3121284', '2018-04-12 22:15:23', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('185', '张三85', 'sanzhang85', '3121285', '2018-04-12 22:15:23', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('186', '张三86', 'sanzhang86', '3121286', '2018-04-12 22:15:23', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('187', '张三87', 'sanzhang87', '3121287', '2018-04-12 22:15:23', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('188', '张三88', 'sanzhang88', '3121288', '2018-04-12 22:15:23', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('189', '张三89', 'sanzhang89', '3121289', '2018-04-12 22:15:23', null, '3123', null, null, null, null);
INSERT INTO `t_share` VALUES ('193', '张三93', 'sanzhang93', '3121293', '2018-04-12 22:15:23', null, '3123', null, '1', null, null);
INSERT INTO `t_share` VALUES ('194', '张三94', 'sanzhang94', '3121294', '2018-04-12 22:15:23', null, '3123', null, '1', null, null);
INSERT INTO `t_share` VALUES ('195', '张三95', 'sanzhang95', '3121295', '2018-04-12 22:15:23', null, '3123', null, '1', null, null);
INSERT INTO `t_share` VALUES ('196', '张三96', 'sanzhang96', '3121296', '2018-04-12 22:15:23', null, '3123', null, '1', null, null);
INSERT INTO `t_share` VALUES ('197', '张三97', 'sanzhang97', '3121297', '2018-04-12 22:15:23', null, '3123', null, '1', null, null);
INSERT INTO `t_share` VALUES ('198', '张三98', 'sanzhang98', '3121298', '2018-04-12 22:15:23', null, '3123', null, '1', null, null);
INSERT INTO `t_share` VALUES ('199', '张三99', 'sanzhang99', '3121299', '2018-04-12 22:15:23', null, '3123', null, '1', null, null);
INSERT INTO `t_share` VALUES ('200', '张三100', 'sanzhang100', '31212100', '2018-04-12 22:15:23', null, '3123', null, '1', null, null);
INSERT INTO `t_share` VALUES ('201', 'aaa', '333', null, '2018-04-18 13:57:59', '/upload/5bf5767f-2444-437b-8ecd-531d25825d73.jpg', null, null, '1', '333', null);
INSERT INTO `t_share` VALUES ('202', 'aaa', '333', null, '2018-04-18 13:57:59', '/upload/5bf5767f-2444-437b-8ecd-531d25825d73.jpg', null, null, '1', '333', null);
INSERT INTO `t_share` VALUES ('203', 'aaa', '222', null, '2018-04-18 15:00:25', '/upload/5bf5767f-2444-437b-8ecd-531d25825d73.jpg', null, null, '1', '222', null);
INSERT INTO `t_share` VALUES ('204', 'aaa', '555', null, '2018-04-18 17:39:22', '/upload/5bf5767f-2444-437b-8ecd-531d25825d73.jpg', null, null, '1', '555', null);
INSERT INTO `t_share` VALUES ('206', 'aaa', '888', null, '2018-04-18 19:02:08', '/upload/5bf5767f-2444-437b-8ecd-531d25825d73.jpg', null, null, '1', '888', null);
INSERT INTO `t_share` VALUES ('1002', 'aaa', '111', null, '2018-04-18 19:28:04', '/upload/5bf5767f-2444-437b-8ecd-531d25825d73.jpg', null, null, '1', '111', null);
INSERT INTO `t_share` VALUES ('1003', 'aaa', 'rwerw', null, '2018-04-18 23:31:37', '/upload/5bf5767f-2444-437b-8ecd-531d25825d73.jpg', null, null, '1', 'ewrwe', null);

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `collegeId` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createCollege` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `studentNo` varchar(255) DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `ancestor` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `inTake` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `politicalStatus` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('5', null, null, null, null, null, '1', '202', null, null, '小小2', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('6', null, null, null, null, null, '1', '203', null, null, '小小3', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('7', null, null, null, null, null, '1', '204', null, null, '小小4', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('8', null, null, null, null, null, '1', '205', null, null, '小小5', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('9', null, null, null, null, null, '1', '206', null, null, '小小6', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('10', null, null, null, null, null, '1', '207', null, null, '小小7', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('11', null, null, null, null, null, '1', '208', null, null, '小小8', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('12', null, null, null, null, null, '1', '209', null, null, '小小9', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('13', null, null, null, null, null, '1', '2010', null, null, '小小10', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('14', null, null, null, null, null, '1', '2011', null, null, '小小11', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('15', null, null, null, null, null, '1', '2012', null, null, '小小12', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('16', null, null, null, null, null, '1', '2013', null, null, '小小13', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('17', null, null, null, null, null, '1', '2014', null, null, '小小14', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('18', null, null, null, null, null, '1', '2015', null, null, '小小15', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('19', null, null, null, null, null, '1', '2016', null, null, '小小16', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('20', null, null, null, null, null, '1', '2017', null, null, '小小17', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('21', null, null, null, null, null, '1', '2018', null, null, '小小18', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('22', null, null, null, null, null, '1', '2019', null, null, '小小19', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('23', null, null, null, null, null, '1', '2020', null, null, '小小20', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('24', null, null, null, null, null, '1', '2021', null, null, '小小21', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('25', null, null, null, null, null, '1', '2022', null, null, '小小22', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('26', null, null, null, null, null, '1', '2023', null, null, '小小23', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('27', null, null, null, null, null, '1', '2024', null, null, '小小24', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('28', null, null, null, null, null, '1', '2025', null, null, '小小25', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('29', null, null, null, null, null, '1', '2026', null, null, '小小26', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('30', null, null, null, null, null, '1', '2027', null, null, '小小27', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('31', null, null, null, null, null, '1', '2028', null, null, '小小28', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('32', null, null, null, null, null, '1', '2029', null, null, '小小29', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('33', null, null, null, null, null, '1', '2030', null, null, '小小30', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('34', null, null, null, null, null, '1', '2031', null, null, '小小31', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('35', null, null, null, null, null, '1', '2032', null, null, '小小32', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('36', null, null, null, null, null, '1', '2033', null, null, '小小33', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('37', null, null, null, null, null, '1', '2034', null, null, '小小34', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('38', null, null, null, null, null, '1', '2035', null, null, '小小35', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('39', null, null, null, null, null, '1', '2036', null, null, '小小36', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('40', null, null, null, null, null, '1', '2037', null, null, '小小37', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('41', null, null, null, null, null, '1', '2038', null, null, '小小38', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('42', null, null, null, null, null, '1', '2039', null, null, '小小39', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('43', null, null, null, null, null, '1', '2040', null, null, '小小40', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('44', null, null, null, null, null, '1', '2041', null, null, '小小41', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('45', null, null, null, null, null, '1', '2042', null, null, '小小42', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('46', null, null, null, null, null, '1', '2043', null, null, '小小43', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('47', null, null, null, null, null, '1', '2044', null, null, '小小44', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('48', null, null, null, null, null, '1', '2045', null, null, '小小45', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('49', null, null, null, null, null, '1', '2046', null, null, '小小46', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('50', null, null, null, null, null, '1', '2047', null, null, '小小47', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('51', null, null, null, null, null, '1', '2048', null, null, '小小48', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('52', null, null, null, null, null, '1', '2049', null, null, '小小49', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('53', null, null, null, null, null, '1', '2050', null, null, '小小50', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('54', null, null, null, null, null, '1', '2051', null, null, '小小51', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('55', null, null, null, null, null, '1', '2052', null, null, '小小52', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('56', null, null, null, null, null, '1', '2053', null, null, '小小53', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('57', null, null, null, null, null, '1', '2054', null, null, '小小54', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('58', null, null, null, null, null, '1', '2055', null, null, '小小55', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('59', null, null, null, null, null, '1', '2056', null, null, '小小56', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('60', null, null, null, null, null, '1', '2057', null, null, '小小57', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('61', null, null, null, null, null, '1', '2058', null, null, '小小58', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('62', null, null, null, null, null, '1', '2059', null, null, '小小59', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('63', null, null, null, null, null, '1', '2060', null, null, '小小60', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('64', null, null, null, null, null, '1', '2061', null, null, '小小61', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('65', null, null, null, null, null, '1', '2062', null, null, '小小62', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('66', null, null, null, null, null, '1', '2063', null, null, '小小63', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('67', null, null, null, null, null, '1', '2064', null, null, '小小64', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('68', null, null, null, null, null, '1', '2065', null, null, '小小65', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('69', null, null, null, null, null, '1', '2066', null, null, '小小66', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('70', null, null, null, null, null, '1', '2067', null, null, '小小67', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('71', null, null, null, null, null, '1', '2068', null, null, '小小68', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('72', null, null, null, null, null, '1', '2069', null, null, '小小69', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('73', null, null, null, null, null, '1', '2070', null, null, '小小70', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('74', null, null, null, null, null, '1', '2071', null, null, '小小71', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('75', null, null, null, null, null, '1', '2072', null, null, '小小72', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('76', null, null, null, null, null, '1', '2073', null, null, '小小73', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('77', null, null, null, null, null, '1', '2074', null, null, '小小74', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('78', null, null, null, null, null, '1', '2075', null, null, '小小75', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('79', null, null, null, null, null, '1', '2076', null, null, '小小76', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('80', null, null, null, null, null, '1', '2077', null, null, '小小77', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('81', null, null, null, null, null, '1', '2078', null, null, '小小78', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('82', null, null, null, null, null, '1', '2079', null, null, '小小79', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('83', null, null, null, null, null, '1', '2080', null, null, '小小80', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('84', null, null, null, null, null, '1', '2081', null, null, '小小81', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('85', null, null, null, null, null, '1', '2082', null, null, '小小82', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('86', null, null, null, null, null, '1', '2083', null, null, '小小83', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('87', null, null, null, null, null, '1', '2084', null, null, '小小84', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('88', null, null, null, null, null, '1', '2085', null, null, '小小85', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('89', null, null, null, null, null, '1', '2086', null, null, '小小86', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('90', null, null, null, null, null, '1', '2087', null, null, '小小87', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('91', null, null, null, null, null, '1', '2088', null, null, '小小88', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('92', null, null, null, null, null, '1', '2089', null, null, '小小89', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('93', null, null, null, null, null, '1', '2090', null, null, '小小90', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('94', null, null, null, null, null, '1', '2091', null, null, '小小91', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('95', null, null, null, null, null, '1', '2092', null, null, '小小92', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('104', null, '321', '32', '2018-05-30 02:15:49', '131', '1', '3213', '321', '2018-05-29 02:15:50', '312', '213', '2018-02-14 15:49:48', '3213', '2018-05-19 02:15:49', '3123', '312', '321', '男', null);
INSERT INTO `t_user` VALUES ('105', null, null, null, null, null, '1', '20100', null, null, '小小100', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('106', null, null, null, null, null, '1', '20101', null, null, '小小101', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('107', null, null, null, null, null, '1', '20102', null, null, '小小102', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('108', null, null, null, null, null, '1', '20103', null, null, '小小103', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('109', null, null, null, null, null, '1', '20104', null, null, '小小104', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('110', null, null, null, null, null, '1', '20105', null, null, '小小105', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('111', null, null, null, null, null, '1', '20106', null, null, '小小106', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('112', null, null, null, null, null, '1', '20107', null, null, '小小107', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('113', null, null, null, null, null, '1', '20108', null, null, '小小108', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('114', null, null, null, null, null, '1', '20109', null, null, '小小109', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('115', null, null, null, null, null, '1', '20110', null, null, '小小110', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('116', null, null, null, null, null, '1', '20111', null, null, '小小111', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('117', null, null, null, null, null, '1', '20112', null, null, '小小112', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('118', null, null, null, null, null, '1', '20113', null, null, '小小113', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('119', null, null, null, null, null, '1', '20114', null, null, '小小114', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('120', null, null, null, null, null, '1', '20115', null, null, '小小115', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('121', null, null, null, null, null, '1', '20116', null, null, '小小116', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('122', null, null, null, null, null, '1', '20117', null, null, '小小117', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('123', null, null, null, null, null, '1', '20118', null, null, '小小118', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('124', null, null, null, null, null, '1', '20119', null, null, '小小119', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('125', null, null, null, null, null, '1', '20120', null, null, '小小120', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('126', null, null, null, null, null, '1', '20121', null, null, '小小121', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('127', null, null, null, null, null, '1', '20122', null, null, '小小122', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('128', null, null, null, null, null, '1', '20123', null, null, '小小123', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('129', null, null, null, null, null, '1', '20124', null, null, '小小124', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('130', null, null, null, null, null, '1', '20125', null, null, '小小125', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('131', null, null, null, null, null, '1', '20126', null, null, '小小126', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('132', null, null, null, null, null, '1', '20127', null, null, '小小127', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('133', null, null, null, null, null, '1', '20128', null, null, '小小128', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('134', null, null, null, null, null, '1', '20129', null, null, '小小129', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('135', null, null, null, null, null, '1', '20130', null, null, '小小130', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('136', null, null, null, null, null, '1', '20131', null, null, '小小131', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('137', null, null, null, null, null, '1', '20132', null, null, '小小132', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('138', null, null, null, null, null, '1', '20133', null, null, '小小133', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('139', null, null, null, null, null, '1', '20134', null, null, '小小134', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('140', null, null, null, null, null, '1', '20135', null, null, '小小135', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('141', null, null, null, null, null, '1', '20136', null, null, '小小136', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('142', null, null, null, null, null, '1', '20137', null, null, '小小137', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('143', null, null, null, null, null, '1', '20138', null, null, '小小138', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('144', null, null, null, null, null, '1', '20139', null, null, '小小139', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('145', null, null, null, null, null, '1', '20140', null, null, '小小140', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('146', null, null, null, null, null, '1', '20141', null, null, '小小141', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('147', null, null, null, null, null, '1', '20142', null, null, '小小142', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('148', null, null, null, null, null, '1', '20143', null, null, '小小143', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('149', null, null, null, null, null, '1', '20144', null, null, '小小144', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('150', null, null, null, null, null, '1', '20145', null, null, '小小145', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('151', null, null, null, null, null, '1', '20146', null, null, '小小146', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('152', null, null, null, null, null, '1', '20147', null, null, '小小147', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('153', null, null, null, null, null, '1', '20148', null, null, '小小148', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('154', null, null, null, null, null, '1', '20149', null, null, '小小149', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('155', null, null, null, null, null, '1', '20150', null, null, '小小150', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('156', null, null, null, null, null, '1', '20151', null, null, '小小151', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('157', null, null, null, null, null, '1', '20152', null, null, '小小152', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('158', null, null, null, null, null, '1', '20153', null, null, '小小153', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('159', null, null, null, null, null, '1', '20154', null, null, '小小154', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('160', null, null, null, null, null, '1', '20155', null, null, '小小155', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('161', null, null, null, null, null, '1', '20156', null, null, '小小156', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('162', null, null, null, null, null, '1', '20157', null, null, '小小157', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('163', null, null, null, null, null, '1', '20158', null, null, '小小158', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('164', null, null, null, null, null, '1', '20159', null, null, '小小159', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('165', null, null, null, null, null, '1', '20160', null, null, '小小160', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('166', null, null, null, null, null, '1', '20161', null, null, '小小161', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('167', null, null, null, null, null, '1', '20162', null, null, '小小162', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('168', null, null, null, null, null, '1', '20163', null, null, '小小163', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('169', null, null, null, null, null, '1', '20164', null, null, '小小164', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('170', null, null, null, null, null, '1', '20165', null, null, '小小165', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('171', null, null, null, null, null, '1', '20166', null, null, '小小166', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('172', null, null, null, null, null, '1', '20167', null, null, '小小167', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('173', null, null, null, null, null, '1', '20168', null, null, '小小168', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('174', null, null, null, null, null, '1', '20169', null, null, '小小169', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('175', null, null, null, null, null, '1', '20170', null, null, '小小170', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('176', null, null, null, null, null, '1', '20171', null, null, '小小171', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('177', null, null, null, null, null, '1', '20172', null, null, '小小172', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('178', null, null, null, null, null, '1', '20173', null, null, '小小173', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('179', null, null, null, null, null, '1', '20174', null, null, '小小174', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('180', null, null, null, null, null, '1', '20175', null, null, '小小175', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('181', null, null, null, null, null, '1', '20176', null, null, '小小176', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('182', null, null, null, null, null, '1', '20177', null, null, '小小177', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('183', null, null, null, null, null, '1', '20178', null, null, '小小178', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('184', null, null, null, null, null, '1', '20179', null, null, '小小179', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('185', null, null, null, null, null, '1', '20180', null, null, '小小180', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('186', null, null, null, null, null, '1', '20181', null, null, '小小181', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('187', null, null, null, null, null, '1', '20182', null, null, '小小182', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('188', null, null, null, null, null, '1', '20183', null, null, '小小183', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('189', null, null, null, null, null, '1', '20184', null, null, '小小184', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('190', null, null, null, null, null, '1', '20185', null, null, '小小185', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('191', null, null, null, null, null, '1', '20186', null, null, '小小186', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('192', null, null, null, null, null, '1', '20187', null, null, '小小187', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('193', null, null, null, null, null, '1', '20188', null, null, '小小188', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('194', null, null, null, null, null, '1', '20189', null, null, '小小189', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('216', null, null, null, null, '123', '1', '2014', null, null, 'aaa', null, null, null, null, null, null, null, '女', '/upload/5bf5767f-2444-437b-8ecd-531d25825d73.jpg');
INSERT INTO `t_user` VALUES ('217', null, '321', '321', '2018-06-19 02:13:45', '123', '1', '2013', '321', '2018-06-19 02:13:45', 'bbb', '3123', '2018-03-27 13:45:31', '231', '2018-06-19 02:13:45', '3213', '312', '312', '男', null);

-- ----------------------------
-- Table structure for `t_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `t_userinfo`;
CREATE TABLE `t_userinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ancestor` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `inTake` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `politicalStatus` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `t_word`
-- ----------------------------
DROP TABLE IF EXISTS `t_word`;
CREATE TABLE `t_word` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `fbtime` datetime DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `resp` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_word
-- ----------------------------
