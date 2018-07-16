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
<h4>Osori & Omori</h4>
	<div id="firstSlide" class="slideBoxWrap">
		<div class="sliderBox" class="article">
			<div class="sliderBoxDesc">
				<div id="carouselWrapper" class="description">
					<div class="scrollerBox">
						<ul>
							<li><img src='/images/friend/sujin_img/img01.jpeg' alt='' width='50px' height='300px'/></li>
							<li><img src='/images/friend/sujin_img/img02.jpg' alt='' width='50px' height='300px'/></li>
							<li><img src='/images/friend/sujin_img/img03.jpg' alt='' width='50px' height='300px'/></li>
							<li><img src='/images/friend/sujin_img/img04.jpg' alt='' width='50px' height='300px'/></li>
							<li><img src='/images/friend/sujin_img/img05.jpg' alt='' width='50px' height='300px'/></li>
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
	});

	</script>
</body>
</html>