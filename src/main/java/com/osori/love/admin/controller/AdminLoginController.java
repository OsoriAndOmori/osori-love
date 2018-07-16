/**
 * @(#) AdminLoginController.class $version 2018. 07. 16
 *
 * Copyright 2018 NAVER Corp. All rights Reserved.
 * NAVER PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.osori.love.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * AdminLoginController 
 *
 * @author 스포츠_개발 (dl_sports_sweng@navercorp.com)
 */
@Controller
public class AdminLoginController {
	@ResponseBody
	@GetMapping(value = "/admin")
	public String test() {
		return "admin";
	}
}