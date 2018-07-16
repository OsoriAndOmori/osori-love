/**
 * @(#) MusicController.class $version 2018. 07. 05
 *
 * Copyright 2018 NAVER Corp. All rights Reserved.
 * NAVER PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.osori.love.music.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * MusicController 
 */
@Controller
public class MusicController {
	@GetMapping(value = "/music")
	public String music() {
		return "music/music";
	}

	@GetMapping(value = "/music/perform")
	public String perform() {
		return "music/musicPerform";
	}

	@GetMapping(value = "/music/guitar")
	public String guitar() {
		return "music/musicGuitar";
	}

	@GetMapping(value = "/music/indie")
	public String indie() {
		return "music/musicIndie";
	}

	@GetMapping(value = "/music/songs")
	public String songs() {
		return "music/musicSongs";
	}
}