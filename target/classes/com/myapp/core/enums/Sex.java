package com.myapp.core.enums;

import java.util.HashMap;
import java.util.Map;

import com.myapp.core.base.enums.MyEnum;

/**
 *-----------MySong---------------
 * ©MySong基础框架搭建
 * @author mySong @date 2017年5月5日 
 * @system:
 *
 *-----------MySong---------------
 */
public enum Sex implements MyEnum<Sex,Integer> {
	MAIL(1,"男"),WOMAN(2,"女"),NO(3,"什么也不是");
	private String name;
	private Integer value;
	private static final Map<Integer, Sex> map = new HashMap<Integer, Sex>();
	static {
        map.put(MAIL.getValue(), MAIL);
        map.put(WOMAN.getValue(), WOMAN);
        map.put(NO.getValue(), NO);
    }

	Sex(Integer value,String name){
		this.name = name;
		this.value = value;
	}
	public Sex getEnum(Integer value) {
		return map.get(value);
	}

	public String getName() {
		return this.name;
	}

	public Integer getValue() {
		return this.value;
	}

	

}
