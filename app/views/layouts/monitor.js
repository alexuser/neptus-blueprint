
/*!
 * MonitorAllTheThings.js
 * Monitor JS, CSS and Images linked locally
 * and reload without refresh (if possible)
 *
 * Depends on jQuery (but is NOT a plug-in per se)
 * Copyright 2013 Ivan Castellanos
 * Released under the MIT license
 *
 * Date: 2013-10-18
 */

(function ($) {

	 $.monitor = {
	 	stop: function () {
	 		active = false;
	 	},
	 	activate: function () {
	 		active = true;
	 	},
	 	page: function (bool) {
	 		page = bool;
	 	}
	 };

	$(function (){
		
		"use strict";
		var all = "*, script, link[href], img";
		var rnd = function (){
			return "?c=" + (+new Date());
		};
		

		var watchFiles = $(all).map(function(){

			var ref = document.location.protocol + "//" + document.location.host + "/";
			var location = this.src || (this.tagName !== 'A' && this.href);
			var content;

			if (!location && !$(this).is("[src], [href]") && $(this).is(":visible")) {
				$("*").filter(":visible").filter(function (){
					$(this).css("background", function (i, attr){
						if (/url ?\(/i.test(attr)) {
							location = attr.replace(/^.*url ?\(|\).*$/g, '');
						}
					});
				});
			}

			if (!location) return null;

			var data = {name: location};

			if (location && !(/^https?:/).test(location)) {
				location = ref + location;
			} else if (location.indexOf(ref) === -1) {
				return null;
			}
			
			$.ajax({url:location, async: false, dataType: "text", error: function (a, b, error){
				throw error;
			}, success: function (data){
				content = data;
			}});

			data.location = location;
			data.content = content;

			return data;

		}).get();


		var active = true;
		var page = false;

		var imagesLoading = [];

		function monitorRec () {
			
			if (!active) return;

			var thisUrl = document.location.href;
			var thisIndex = watchFiles.indexOf(thisUrl);

			if (page && thisIndex === -1) {
				watchFiles.push( thisUrl );
			}
			if (!page && thisIndex !== -1) {
				watchFiles.splice(thisIndex, 1);
			}

			$.each(watchFiles, function (i, file){

				var doIt = function () {

					var url = file.location + rnd();
					$.ajax({url: url, dataType: "text", error: function (a, b, error){
						if (window.console) {
							console.log("False alarm: probably the image is being saved so it couldn't be accessed.");
						}
						setTimeout(monitorRec, 500);
					}, success: function (data){
						if (page && file === thisUrl) {
							return;
						}
						var location = file.location.replace(/\?.*/, "");
						if (file.content !== data) {
							if (/\.(js|html?|php|\/)$/.test(location)) {
								var cache = rnd();
								cache = cache.replace(/[\?]/, /[\?]/.test(document.location) ? '&' : '?');
								document.location = String(document.location).replace(/\??c=.+?(&|$)/, "") + rnd();
								return;
							}

							else if (/\.css$/.test(location)) {
								$("link").attr("href", function (i, attr){
									if ( this.href.indexOf(file.name) !== -1)
										return attr.replace(/\?.*/, '' ) + rnd();
								});
							}

							else {
								$("[src]").attr("src", function (i, attr){
									if ( this.src.indexOf(file.name) !== -1)
										return attr.replace(/\?.*/, '' ) + rnd();
								});

								$("*").filter(function (){
									$(this).css("background", function (i, attr){
										if ( attr.indexOf(file.name) !== -1 ) {
											attr = attr.replace(/\?.*/, "");
											return attr.replace(/\)/, rnd() + ")");
										}
									});
								});
							}
							file.content = data;
						}
						if (i === watchFiles.length - 1) {
							setTimeout(monitorRec, 500);
						}
					}});
				};
				doIt();
			});
		}
		setTimeout(monitorRec, 3000); // first time to avoid cache-stuck-loading bug
	});

})(jQuery);