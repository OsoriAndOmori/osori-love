/**
 * @(#) ContactController.class $version 2018. 07. 05
 *
 * Copyright 2018 NAVER Corp. All rights Reserved.
 * NAVER PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.osori.love.contact.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * ContactController 
 */
@Controller
public class ContactController {
	@GetMapping(value = "/contact")
	public String test() {
		return "contact/contact";
	}
}