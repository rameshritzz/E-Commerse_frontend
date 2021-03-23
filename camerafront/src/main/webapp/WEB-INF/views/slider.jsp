<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cr" value="${pageContext.request.contextPath}" />
<style type="text/css">
.elfinder-tree .elfinder-navbar-root .elfinder-navbar-icon {
	background-position: 0 -16px !important;
}
</style>

<!-- Google Counter Begin -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-45690170-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-45690170-1');
</script>
<!-- Google Counter End -->


<link href="/style/site/css/site-style-2.5.0.min.css" rel="stylesheet" />
</head>
<body style="font-family: Arial, sans-serif;">
	<form method="post"
		action="./image-gallery-with-vertical-thumbnail.slider" id="form1"
		class="mainform">
		<div class="aspNetHidden">
			<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
				value="Mz6mZUllWpIIRuw34XfxqimXOOLXix1oN1ti/GLo6JrWwpB0kA2++FxLWZGyrA/1RArktpPyazau7PtAP0py4tdLzTym2yYBCPCvpY2fndufk22lpeBHcWQA5ZKJ7KGAjPsjrUkuou8CMEHzyeiwi5TJZjd/42sZR8EKqs8AdXmIWJjcDMl/i3fBrPE9tQ43lxZ/3N0sRuF1dX+f6HOTOz62UUA4V3hLHGMXTgCwiQo=" />
		</div>

		<div class="aspNetHidden">

			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="B6CBD475" />
		</div>

		<!--#region header-->
		<div class="header public clearfix">
			<a class="logo" href="/"></a>

			<div class="nav">

				<label for="toggle" class="toggle" onclick> <span
					class="icon-bar" style="top: 7px;"></span> <span class="icon-bar"
					style="top: 14px;"></span> <span class="icon-bar"
					style="top: 21px;"></span>
				</label>





			</div>

			<!-- for public access -->
			<div class="menu"></div>

		</div>
		</div>
		<!--#endregion-->

		<!--#region content-->



		<!-- #region Jssor Slider Begin -->
		<!-- Generator: Jssor Slider Maker -->
		<!-- Source: https://www.jssor.com -->
		<script
			src="//jssors8.azureedge.net/script/jssor.slider-27.5.0.min.js"
			type="text/javascript"></script>
		<script type="text/javascript">
			jssor_1_slider_init = function() {

				var jssor_1_SlideshowTransitions = [ {
					$Duration : 1200,
					$Zoom : 1,
					$Easing : {
						$Zoom : $Jease$.$InCubic,
						$Opacity : $Jease$.$OutQuad
					},
					$Opacity : 2
				}, {
					$Duration : 1000,
					$Zoom : 11,
					$SlideOut : true,
					$Easing : {
						$Zoom : $Jease$.$InExpo,
						$Opacity : $Jease$.$Linear
					},
					$Opacity : 2
				}, {
					$Duration : 1200,
					$Zoom : 1,
					$Rotate : 1,
					$During : {
						$Zoom : [ 0.2, 0.8 ],
						$Rotate : [ 0.2, 0.8 ]
					},
					$Easing : {
						$Zoom : $Jease$.$Swing,
						$Opacity : $Jease$.$Linear,
						$Rotate : $Jease$.$Swing
					},
					$Opacity : 2,
					$Round : {
						$Rotate : 0.5
					}
				}, {
					$Duration : 1000,
					$Zoom : 11,
					$Rotate : 1,
					$SlideOut : true,
					$Easing : {
						$Zoom : $Jease$.$InQuint,
						$Opacity : $Jease$.$Linear,
						$Rotate : $Jease$.$InQuint
					},
					$Opacity : 2,
					$Round : {
						$Rotate : 0.8
					}
				}, {
					$Duration : 1200,
					x : 0.5,
					$Cols : 2,
					$Zoom : 1,
					$Assembly : 2049,
					$ChessMode : {
						$Column : 15
					},
					$Easing : {
						$Left : $Jease$.$InCubic,
						$Zoom : $Jease$.$InCubic,
						$Opacity : $Jease$.$Linear
					},
					$Opacity : 2
				}, {
					$Duration : 1200,
					x : 4,
					$Cols : 2,
					$Zoom : 11,
					$SlideOut : true,
					$Assembly : 2049,
					$ChessMode : {
						$Column : 15
					},
					$Easing : {
						$Left : $Jease$.$InExpo,
						$Zoom : $Jease$.$InExpo,
						$Opacity : $Jease$.$Linear
					},
					$Opacity : 2
				}, {
					$Duration : 1200,
					x : 0.6,
					$Zoom : 1,
					$Rotate : 1,
					$During : {
						$Left : [ 0.2, 0.8 ],
						$Zoom : [ 0.2, 0.8 ],
						$Rotate : [ 0.2, 0.8 ]
					},
					$Opacity : 2,
					$Round : {
						$Rotate : 0.5
					}
				}, {
					$Duration : 1000,
					x : -4,
					$Zoom : 11,
					$Rotate : 1,
					$SlideOut : true,
					$Easing : {
						$Left : $Jease$.$InQuint,
						$Zoom : $Jease$.$InQuart,
						$Opacity : $Jease$.$Linear,
						$Rotate : $Jease$.$InQuint
					},
					$Opacity : 2,
					$Round : {
						$Rotate : 0.8
					}
				}, {
					$Duration : 1200,
					x : -0.6,
					$Zoom : 1,
					$Rotate : 1,
					$During : {
						$Left : [ 0.2, 0.8 ],
						$Zoom : [ 0.2, 0.8 ],
						$Rotate : [ 0.2, 0.8 ]
					},
					$Opacity : 2,
					$Round : {
						$Rotate : 0.5
					}
				}, {
					$Duration : 1000,
					x : 4,
					$Zoom : 11,
					$Rotate : 1,
					$SlideOut : true,
					$Easing : {
						$Left : $Jease$.$InQuint,
						$Zoom : $Jease$.$InQuart,
						$Opacity : $Jease$.$Linear,
						$Rotate : $Jease$.$InQuint
					},
					$Opacity : 2,
					$Round : {
						$Rotate : 0.8
					}
				}, {
					$Duration : 1200,
					x : 0.5,
					y : 0.3,
					$Cols : 2,
					$Zoom : 1,
					$Rotate : 1,
					$Assembly : 2049,
					$ChessMode : {
						$Column : 15
					},
					$Easing : {
						$Left : $Jease$.$InCubic,
						$Top : $Jease$.$InCubic,
						$Zoom : $Jease$.$InCubic,
						$Opacity : $Jease$.$OutQuad,
						$Rotate : $Jease$.$InCubic
					},
					$Opacity : 2,
					$Round : {
						$Rotate : 0.7
					}
				}, {
					$Duration : 1000,
					x : 0.5,
					y : 0.3,
					$Cols : 2,
					$Zoom : 1,
					$Rotate : 1,
					$SlideOut : true,
					$Assembly : 2049,
					$ChessMode : {
						$Column : 15
					},
					$Easing : {
						$Left : $Jease$.$InExpo,
						$Top : $Jease$.$InExpo,
						$Zoom : $Jease$.$InExpo,
						$Opacity : $Jease$.$Linear,
						$Rotate : $Jease$.$InExpo
					},
					$Opacity : 2,
					$Round : {
						$Rotate : 0.7
					}
				}, {
					$Duration : 1200,
					x : -4,
					y : 2,
					$Rows : 2,
					$Zoom : 11,
					$Rotate : 1,
					$Assembly : 2049,
					$ChessMode : {
						$Row : 28
					},
					$Easing : {
						$Left : $Jease$.$InCubic,
						$Top : $Jease$.$InCubic,
						$Zoom : $Jease$.$InCubic,
						$Opacity : $Jease$.$OutQuad,
						$Rotate : $Jease$.$InCubic
					},
					$Opacity : 2,
					$Round : {
						$Rotate : 0.7
					}
				}, {
					$Duration : 1200,
					x : 1,
					y : 2,
					$Cols : 2,
					$Zoom : 11,
					$Rotate : 1,
					$Assembly : 2049,
					$ChessMode : {
						$Column : 19
					},
					$Easing : {
						$Left : $Jease$.$InCubic,
						$Top : $Jease$.$InCubic,
						$Zoom : $Jease$.$InCubic,
						$Opacity : $Jease$.$OutQuad,
						$Rotate : $Jease$.$InCubic
					},
					$Opacity : 2,
					$Round : {
						$Rotate : 0.8
					}
				} ];

				var jssor_1_options = {
					$AutoPlay : 1,
					$SlideshowOptions : {
						$Class : $JssorSlideshowRunner$,
						$Transitions : jssor_1_SlideshowTransitions,
						$TransitionsOrder : 1
					},
					$ArrowNavigatorOptions : {
						$Class : $JssorArrowNavigator$
					},
					$ThumbnailNavigatorOptions : {
						$Class : $JssorThumbnailNavigator$,
						$Rows : 2,
						$SpacingX : 14,
						$SpacingY : 12,
						$Orientation : 2,
						$Align : 156
					}
				};

				var jssor_1_slider = new $JssorSlider$("jssor_1",
						jssor_1_options);

				/*#region responsive code begin*/

				var MAX_WIDTH = 960;

				function ScaleSlider() {
					var containerElement = jssor_1_slider.$Elmt.parentNode;
					var containerWidth = containerElement.clientWidth;

					if (containerWidth) {

						var expectedWidth = Math.min(MAX_WIDTH
								|| containerWidth, containerWidth);

						jssor_1_slider.$ScaleWidth(expectedWidth);
					} else {
						window.setTimeout(ScaleSlider, 30);
					}
				}

				ScaleSlider();

				$Jssor$.$AddEvent(window, "load", ScaleSlider);
				$Jssor$.$AddEvent(window, "resize", ScaleSlider);
				$Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
				/*#endregion responsive code end*/
			};
		</script>
		<style>
/*jssor slider loading skin spin css*/
.jssorl-009-spin img {
	animation-name: jssorl-009-spin;
	animation-duration: 1.6s;
	animation-iteration-count: infinite;
	animation-timing-function: linear;
}

@
keyframes jssorl-009-spin {from { transform:rotate(0deg);
	
}

to {
	transform: rotate(360deg);
}

}

/*jssor slider arrow skin 093 css*/
.jssora093 {
	display: block;
	position: absolute;
	cursor: pointer;
}

.jssora093 .c {
	fill: none;
	stroke: #fff;
	stroke-width: 400;
	stroke-miterlimit: 10;
}

.jssora093 .a {
	fill: none;
	stroke: #fff;
	stroke-width: 400;
	stroke-miterlimit: 10;
}

.jssora093:hover {
	opacity: .8;
}

.jssora093.jssora093dn {
	opacity: .6;
}

.jssora093.jssora093ds {
	opacity: .3;
	pointer-events: none;
}

/*jssor slider thumbnail skin 101 css*/
.jssort101 .p {
	position: absolute;
	top: 0;
	left: 0;
	box-sizing: border-box;
	background: #000;
}

.jssort101 .p .cv {
	position: relative;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	border: 2px solid #000;
	box-sizing: border-box;
	z-index: 1;
}

.jssort101 .a {
	fill: none;
	stroke: #fff;
	stroke-width: 400;
	stroke-miterlimit: 10;
	visibility: hidden;
}

.jssort101 .p:hover .cv, .jssort101 .p.pdn .cv {
	border: none;
	border-color: transparent;
}

.jssort101 .p:hover {
	padding: 2px;
}

.jssort101 .p:hover .cv {
	background-color: rgba(0, 0, 0, 6);
	opacity: .35;
}

.jssort101 .p:hover.pdn {
	padding: 0;
}

.jssort101 .p:hover.pdn .cv {
	border: 2px solid #fff;
	background: none;
	opacity: .35;
}

.jssort101 .pav .cv {
	border-color: #fff;
	opacity: .35;
}

.jssort101 .pav .a, .jssort101 .p:hover .a {
	visibility: visible;
}

.jssort101 .t {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	border: none;
	opacity: .6;
}

.jssort101 .pav .t, .jssort101 .p:hover .t {
	opacity: 1;
}
</style>
		<div id="jssor_1"
			style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 960px; height: 480px; overflow: hidden; visibility: hidden; background-color: #24262e;">
			<!-- Loading Screen -->
			<div data-u="loading" class="jssorl-009-spin"
				style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; text-align: center; background-color: rgba(0, 0, 0, 0.7);">
				<img
					style="margin-top: -19px; position: relative; top: 50%; width: 38px; height: 38px;"
					src="//jssorcdn7.azureedge.net/theme/svg/loading/static-svg/spin.svg" />
			</div>
			<div data-u="slides"
				style="cursor: default; position: relative; top: 0px; left: 0px; width: 960px; height: 480px; overflow: hidden;">
				<div>
					<img data-u="image" src="r/images/10.jpg" />

				</div>
				<div>
					<img data-u="image" src="r/images/4.jpg" />
				</div>
				<div>
					<img data-u="image" src="r/oimages/11.jpg" />
				</div>
				<div>
					<img data-u="image" src="r/images/14.jpg" />
				</div>
				<div>
					<img data-u="image" src="r/images/7.png" />
				</div>

			</div>
			<!-- Arrow Navigator -->
			<div data-u="arrowleft" class="jssora093"
				style="width: 50px; height: 50px; top: 0px; left: 0px;"
				data-autocenter="2">
				<svg viewbox="0 0 16000 16000"
					style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
                    <circle class="c" cx="8000" cy="8000" r="5920"></circle>
                    <polyline class="a"
						points="7777.8,6080 5857.8,8000 7777.8,9920 "></polyline>
                    <line class="a" x1="10142.2" y1="8000" x2="5857.8"
						y2="8000"></line>
                </svg>
			</div>
			<div data-u="arrowright" class="jssora093"
				style="width: 50px; height: 50px; top: 0px; right: 30px;"
				data-autocenter="2">
				<svg viewbox="0 0 16000 16000"
					style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
                    <circle class="c" cx="8000" cy="8000" r="5920"></circle>
                    <polyline class="a"
						points="8222.2,6080 10142.2,8000 8222.2,9920 "></polyline>
                    <line class="a" x1="5857.8" y1="8000" x2="10142.2"
						y2="8000"></line>
                </svg>
			</div>
			<div data-interaction="user-commands" class="cmd-box"
				style="display: none; top: 2px; left: auto; bottom: auto; right: 2px; width: 23px; height: 69px; box-sizing: border-box;"
				data-scale=".2" data-scale-top=".5" data-scale-right=".5">
				<div data-command="jssor-getslider" class="cmd-btn"
					title="get this slider"></div>
				<div data-command="jssor-qrcode" class="cmd-btn" title="QR code"></div>
				<div data-command="jssor-share" class="cmd-btn" title="share"></div>
			</div>
		</div>
		<script type="text/javascript">
			jssor_1_slider_init();
		</script>
		<!-- #endregion Jssor Slider End -->

		<script
			src="//jssors8.azureedge.net/script/site/jssor.user.commands.init-1.8.0.min.js"></script>
		<script>
			jssor_user_commands_init({
				accessControl : {
					"fileInfo" : {
						"id" : 0,
						"name" : "demos/image-gallery-with-vertical-thumbnail.slider",
						"isReserved" : 1,
						"isReadonly" : 1
					},
					"authorInfo" : {
						"userName" : "",
						"memberPlan" : 0
					},
					"accessInfo" : {
						"limitedSlides" : 0,
						"limitedTransitions" : 0,
						"maxUploadFileSize" : 614400
					}
				}
			});
		</script>




		<script>
			new function() {
				var availableWidth = document.body.clientWidth || 728;
				window.screen
						&& window.screen.availWidth
						&& (availableWidth = Math.max(availableWidth,
								window.screen.availWidth));

				if (availableWidth < 728) {
					var adTitleBanner = document
							.getElementById("ad_title_banner");
					adTitleBanner
							&& adTitleBanner.parentNode
									.removeChild(adTitleBanner);
				} else {
					(adsbygoogle = window.adsbygoogle || []).push({});
				}
			};
		</script>