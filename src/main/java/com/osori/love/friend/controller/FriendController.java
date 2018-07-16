/**
 * @(#) FriendController.class $version 2018. 07. 05
 *
 * Copyright 2018 NAVER Corp. All rights Reserved.
 * NAVER PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.osori.love.friend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * FriendController 
 */
@Controller
public class FriendController {
	@GetMapping(value = "/friend")
	public String friend() {
		return "friend/friends";
	}

	@GetMapping(value = "/friend/sujin")
	public String sujin() {
		return "friend/friendSujin";
	}

	@GetMapping(value = "/friend/neighbor")
	public String neighbor() {
		return "friend/friendNeighbor";
	}

	@GetMapping(value = "/friend/high")
	public String high() {
		return "friend/friendHigh";
	}

	@GetMapping(value = "/friend/univ")
	public String univ() {
		return "friend/friendUniv";
	}
}