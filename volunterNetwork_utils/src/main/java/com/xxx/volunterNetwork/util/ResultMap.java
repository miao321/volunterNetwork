package com.xxx.volunterNetwork.util;

import java.util.Date;

import com.xxx.volunterNetwork.domain.Acti;



public class ResultMap {
	public static Acti ReflectMap(String title,String content,String fwyq,String hdjj,String xxdz,
			String lxfs,Date hdsj,String img,String hdlx,String fbzz,Date fbtime,
			Integer state,Integer zmrs) {
		Acti bean = new Acti(title,content,fwyq,hdjj,xxdz,lxfs,hdsj,
				img,hdlx,fbzz,fbtime,state,zmrs);
		return bean;
	}
}
