package com.controller;

import java.util.HashMap;

public class HashMapTest {

	public static void main(String[] args) {
		// HashMap
		// - 값을 저장할때 key, Value 형태로 저장
		// - Value는 중복을 허용하지만 Key 값은 중복이 없다
		// HashMap<Key DataType, Value DataType> h = new 앞에와 동일
		
		// Ex)
		// HashMap에 "이름" : "박병관" 저장하기
		HashMap<String , String> map = new HashMap<String, String>();
		map.put("이름", "류혜림");
		String name = map.get("이름");
		System.out.println(name);
	}

}
