package com.xxx.volunterNetwork.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="t_acti")
public class Acti {
	private Long id;
	private String title;  //标题
	private String content; //服务内容
	private String fwyq;//服务要求
	private String hdjj;//活动简介
	private String xxdz;//详细地址
	private String lxfs;//联系方式
	private Date hdsj;//活动时间
	private String img;//图片
	private String hdlx;//活动类型
	private String fbzz;//发布组织
	private Date fbtime;//发布时间
	private Integer state;//状态
	private Integer zmrs;//招募人数
	private Integer zan;//点赞次数
	private Integer attention;//关注
	public Acti() {
		super();		
	}
	public Acti(Long id, String title, String content, String fwyq, String hdjj, String xxdz, String lxfs, Date hdsj,
			String img, String hdlx, String fbzz, Date fbtime, Integer state, Integer zmrs, Integer zan,
			Integer attention) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.fwyq = fwyq;
		this.hdjj = hdjj;
		this.xxdz = xxdz;
		this.lxfs = lxfs;
		this.hdsj = hdsj;
		this.img = img;
		this.hdlx = hdlx;
		this.fbzz = fbzz;
		this.fbtime = fbtime;
		this.state = state;
		this.zmrs = zmrs;
		this.zan = zan;
		this.attention = attention;
	}
	public Acti(String title, String content, String fwyq, String hdjj, String xxdz, String lxfs, Date hdsj,
			String img, String hdlx, String fbzz, Date fbtime, Integer state, Integer zmrs) {	
		this.title = title;
		this.content = content;
		this.fwyq = fwyq;
		this.hdjj = hdjj;
		this.xxdz = xxdz;
		this.lxfs = lxfs;
		this.hdsj = hdsj;
		this.img = img;
		this.hdlx = hdlx;
		this.fbzz = fbzz;
		this.fbtime = fbtime;
		this.state = state;
		this.zmrs = zmrs;
		this.zan = zan;
		this.attention = attention;
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long getId() {
		return id;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public String getFwyq() {
		return fwyq;
	}
	public String getHdjj() {
		return hdjj;
	}
	public String getXxdz() {
		return xxdz;
	}
	public String getLxfs() {
		return lxfs;
	}
	public Date getHdsj() {
		return hdsj;
	}
	public String getImg() {
		return img;
	}
	public String getHdlx() {
		return hdlx;
	}
	public String getFbzz() {
		return fbzz;
	}
	public Date getFbtime() {
		return fbtime;
	}
	public Integer getState() {
		return state;
	}
	public Integer getZmrs() {
		return zmrs;
	}
	public Integer getZan() {
		return zan;
	}
	public Integer getAttention() {
		return attention;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setFwyq(String fwyq) {
		this.fwyq = fwyq;
	}
	public void setHdjj(String hdjj) {
		this.hdjj = hdjj;
	}
	public void setXxdz(String xxdz) {
		this.xxdz = xxdz;
	}
	public void setLxfs(String lxfs) {
		this.lxfs = lxfs;
	}
	public void setHdsj(Date hdsj) {
		this.hdsj = hdsj;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public void setHdlx(String hdlx) {
		this.hdlx = hdlx;
	}
	public void setFbzz(String fbzz) {
		this.fbzz = fbzz;
	}
	public void setFbtime(Date fbtime) {
		this.fbtime = fbtime;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public void setZmrs(Integer zmrs) {
		this.zmrs = zmrs;
	}
	public void setZan(Integer zan) {
		this.zan = zan;
	}
	public void setAttention(Integer attention) {
		this.attention = attention;
	}
	@Override
	public String toString() {
		return "Acti [id=" + id + ", title=" + title + ", content=" + content + ", fwyq=" + fwyq + ", hdjj=" + hdjj
				+ ", xxdz=" + xxdz + ", lxfs=" + lxfs + ", hdsj=" + hdsj + ", img=" + img + ", hdlx=" + hdlx + ", fbzz="
				+ fbzz + ", fbtime=" + fbtime + ", state=" + state + "]";
	}

}
