/**
 * @(#) OsoriController.class $version 2018. 07. 05
 *
 * Copyright 2018 NAVER Corp. All rights Reserved.
 * NAVER PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.osori.love;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * OsoriController
 *
 * @author 스포츠_개발 (dl_sports_sweng@navercorp.com)
 */
@Controller
public class OsoriController {

	@GetMapping("/test")
	public String test() {
		return "main";
	}
}