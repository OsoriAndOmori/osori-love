<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title></title>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
	<script type="text/javascript" src="/js/lib/iscroll/iscroll.js"></script>
	<link type="text/css" href="/css/friend.css" rel="stylesheet" />

</head>
<body>
<h4>안암5형제 Missing이상준 대신 소녀전사 장형윤</h4>
	<div id="firstSlide" class="slideBoxWrap">
		<div class="sliderBox" class="article">
			<div class="sliderBoxDesc">
				<div id="carouselWrapper" class="description">
					<div class="scrollerBox">
						<ul>
							<li><h5>박지홍의 졸업</h5><img src="/images/friend/univ_img/anam1.jpg" alt='' width='50px' height='400px'/></li>
							<li><h5>학구열을 불태움</h5><img src="/images/friend/univ_img/anam2.jpg"  alt='' width='50px' height='300px'/></li>
							<li><h5>형윤이의 안암나들이</h5><img src="/images/friend/univ_img/anam3.jpg"  alt='' width='50px' height='300px'/></li>
							<li><h5>하라는거 안하고 딴 짓 하기</h5><img src="/images/friend/univ_img/anam4.jpg"  alt='' width='50px' height='300px'/></li>
							<li><h5>고려대학교 컴퓨터교육과 09학번</h5><img src="/images/friend/univ_img/anam5.jpg"  alt='' width='50px' height='300px'/></li>
						</ul>
					</div>
				</div>
				<div class="sliderNav">
					<a href='#' class='scrollBtn' id='0'>●</a>
					<a href='#' class='scrollBtn' id='1'>●</a>
					<a href='#' class='scrollBtn' id='2'>●</a>
					<a href='#' class='scrollBtn' id='3'>●</a>
					<a href='#' class='scrollBtn' id='4'>●</a>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	var eventLinkArray=new Array();
	eventLinkArray[0]="";
	eventLinkArray[1]="";
	eventLinkArray[2]="";
	eventLinkArray[3]="";
	eventLinkArray[4]="";
	eventLinkArray[5]="";
	$(document).ready(function(){
		jQuery.easing.def = "easeOutExpo";
		var eventCount = $(".scrollerBox li").length;
		var eventOpenFlag = true;
		var autoScrollInterval = 4000;
		
		// initalize event carousel (no support IE)
		var totalCarousel = $(".scrollerBox li").length;
		var currentEvent = 0;
		var TimeMilliseconds = new Date();
		var clickHandler = false;
		/*
		$("#eventTitle").click(function() {
			if (eventOpenFlag) {
				$(".slideBoxWrap").animate( { height:"52px" }, 500);
				$(".sliderBoxDesc").css("display", "none");
			} else {
				$(".slideBoxWrap").animate( { height:"365px" }, 500);
				$(".sliderBoxDesc").css("display", "inline");
			}
			eventOpenFlag = !eventOpenFlag;
		});
		*/
		$(".scrollerBox").css("width", ($(".slideBoxWrap").width()*totalCarousel)+"px");
		$(".scrollerBox li").css("width", $(".slideBoxWrap").width()+"px");

		if ((navigator.appName).indexOf("Microsoft")!=-1) {
			$(".scrollBtn").click(function() {
				selectNumber(this.id, true);
			});
			$("#0").css("color", "#000000");
		} else {
			var iscroll = new iScroll("carouselWrapper", {
				snap: true,
				momentum: false,
				hScrollbar: false,
				vScrollbar: false,
				lockDirection: false,
				onScrollEnd: function() {
					$("#indicator li").each(function(i, node) {
						if(i === iscroll.currPageX) {
							$(node).addClass("active");
						} else {
							$(node).removeClass("active");
						}
					});

					selectNumber(iscroll.currPageX, false);
					clickHandler = true;
				},
				onScrollMove: function(e) {
					clickHandler = false;
				},
				onTouchStart: function(e) {
					clickHandler = true;
					$("#carouselWrapper").mousemove(function() {
						clickHandler = false;
					});
				},
				onTouchEnd: function(e) {
					if (clickHandler == true && (e.type == "mouseup" || e.type == "touchend")) {
						linkToEvent();
					}
					$("#carouselWrapper").mousemove(null);
				}
			});

			function linkToEvent() {
				var TimeMillisecondsClick = new Date();
				if (TimeMillisecondsClick.getTime() > TimeMilliseconds.getTime() + 500 ) {
					TimeMilliseconds = new Date();

					if (eventLinkArray[currentEvent] != "") {
						location.href=eventLinkArray[currentEvent];
					}
				}
			} 

			$(".scrollBtn").click(function() {
				iscroll.scrollToPage(this.id);
			});

			iscroll.scrollToPage(0);
		}

		$(".scrollerBox, .scrollBtn").mouseover(function() {
			clearInterval(autoScrollIntervalId);
			autoScrollIntervalId = null;
		});

		$(".scrollerBox, .scrollBtn").mouseout(function() {
			if (autoScrollIntervalId == null) {
				autoScrollIntervalId = setInterval(autoScroll, autoScrollInterval);
			}
		});

		function autoScroll() {
			if (currentEvent == totalCarousel-1) {
				if ((navigator.appName).indexOf("Microsoft")!=-1) {
					selectNumber(0, true);
				} else {
					iscroll.scrollToPage(0);
				}
			} else {
				if ((navigator.appName).indexOf("Microsoft")!=-1) {
					selectNumber(currentEvent+1, true);
				} else {
					iscroll.scrollToPage(currentEvent+1);
				}
			}
		}

		function selectNumber(newValue, motionFlag) {
			if (currentEvent != newValue) {
				currentEvent = Number(newValue);
				var targetPosition = (currentEvent*-768);

				$(".sliderNav a").each(function(i, node) {
					if (i == newValue) {
						$("#"+i).css("color", "#ffffff");
					} else {
						$("#"+i).css("color", "#B4B4B4");
					}
				});

				if (motionFlag == true) {
					$(".scrollerBox").animate( { left:targetPosition+"px" }, 500);
				}
			}
		}

		selectNumber(0, true);
		var autoScrollIntervalId = setInterval(autoScroll, autoScrollInterval);

		// SECTION LINK
/*
		$(".sectionLink").click(linkToMenuHandler);
		$(".overlay").click(linkToMenuHandler);

		function linkToMenuHandler() {
			switch(this.id) {
				case "vocalCoachTitle":
				case "vocalCoachOverlay":
					location.href="/Coach-IntroduceCoach";
					break;
				case "vocalCheckupTitle":
				case "vocalCheckupOverlay":
					location.href="/Vocalcheckup-Apply";
					break;
				case "starsTitle": 
				case "starsOverlay":
					location.href="/Stars-VocalCoachingPhoto";
					break;
				case "powerVocalTechniqueTitle":  
				case "powerVocalTechniqueOverlay":
					location.href="/PowerVocalTechnique-Introduce";
					break;
				case "concertTitle":
				case "concertOverlay":
					location.href="/Concert-OpenmicMovie";
					break;
				case "qnaTitle":
					location.href="/QnA-HeadCoach";
					break;
			}
		}

		if (eventCount == 0) {
			$(".sliderBoxDesc").css("display", "none");
			$(".slideBoxWrap").css("display", "none");
			$(".slideBoxWrap").css("height", "0px");
		}

		$("#moreMenuOpen").click(function() {
			if ($("#moreMenu").height() != 142) {
				$("#moreMenuButtons").css("display", "block");
				$("#moreMenu").animate( { height:"142px" }, 500);
			} else {
				$("#moreMenuButtons").css("display", "none");
				$("#moreMenu").animate( { height:"42px" }, 500);
			}
		});
*/
		
	});

	</script>
</body>
</html>
