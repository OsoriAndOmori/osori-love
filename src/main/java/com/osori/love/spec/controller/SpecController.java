/**
 * @(#) SpecController.class $version 2018. 07. 05
 *
 * Copyright 2018 NAVER Corp. All rights Reserved.
 * NAVER PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.osori.love.spec.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * SpecController 
 */
@Controller
public class SpecController {
	@GetMapping(value = "/spec")
	public String spec() {
		return "spec/spec";
	}

	@GetMapping(value = "/spec/intro")
	public String intro() {
		return "spec/specIntro";
	}

	@GetMapping(value = "/spec/ic")
	public String ic() {
		return "spec/specIc";
	}

	@GetMapping(value = "/spec/ds")
	public String ds() {
		return "spec/specDs";
	}

	@GetMapping(value = "/spec/os")
	public String os() {
		return "spec/specOs";
	}

	@GetMapping(value = "/spec/gp")
	public String gp() {
		return "spec/specGp";
	}

	@GetMapping(value = "/spec/iap")
	public String iap() {
		return "spec/specIap";
	}
}