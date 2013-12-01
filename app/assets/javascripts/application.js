// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require bootstrap
$(function(){
	var $university_req_rate =$('#university_req_rate'),
	university_percent = parseInt($university_req_rate.data('percent')),
	university_deg = 360*university_percent/100;
	if (university_percent > 50) {
		$university_req_rate.addClass('gt-50');
	}
	$('#university_req_rate .ppc-progress-fill').css('transform','rotate('+ university_deg +'deg)');
	$('#university_req_rate .ppc-percents span').html(university_percent+'%');


	var $campus_req_rate =$('#campus_req_rate'),
	campus_percent = parseInt($campus_req_rate.data('percent')),
	campus_deg = 360*campus_percent/100;
	if (campus_percent > 50) {
		$campus_req_rate.addClass('gt-50');
	}
	$('#campus_req_rate .ppc-progress-fill').css('transform','rotate('+ campus_deg +'deg)');
	$('#campus_req_rate .ppc-percents span').html(campus_percent+'%');

	var $ls_college_req_rate =$('#ls_college_req_rate'),
	ls_percent = parseInt($ls_college_req_rate.data('percent')),
	ls_deg = 360*ls_percent/100;
	if (ls_percent > 50) {
		$ls_college_req_rate.addClass('gt-50');
	}
	$('#ls_college_req_rate .ppc-progress-fill').css('transform','rotate('+ ls_deg +'deg)');
	$('#ls_college_req_rate .ppc-percents span').html(ls_percent+'%');


	var $major_req_rate =$('#major_req_rate'),
	major_percent = parseInt($major_req_rate.data('percent')),
	major_deg = 360*major_percent/100;
	if (major_percent > 50) {
		$major_req_rate.addClass('gt-50');
	}
	$('#major_req_rate .ppc-progress-fill').css('transform','rotate('+ major_deg +'deg)');
	$('#major_req_rate .ppc-percents span').html(major_percent+'%');
});