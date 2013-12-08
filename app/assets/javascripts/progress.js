$(function(){
	var $university_req_rate =$('#university_req_rate'),
	university_percent = parseInt($university_req_rate.data('percent')),
	university_deg = 360*university_percent/100;
	if (university_percent > 50) {
		$university_req_rate.addClass('gt-50');
	}
	$('#university_req_rate .ppc-progress-fill').css('transform','rotate('+ university_deg +'deg)');
	$('#university_req_rate .ppc-progress-fill').css('-webkit-transform','rotate('+ university_deg +'deg)');
	$('#university_req_rate .ppc-percents span').html(university_percent+'%');


	var $campus_req_rate =$('#campus_req_rate'),
	campus_percent = parseInt($campus_req_rate.data('percent')),
	campus_deg = 360*campus_percent/100;
	if (campus_percent > 50) {
		$campus_req_rate.addClass('gt-50');
	}
	$('#campus_req_rate .ppc-progress-fill').css('transform','rotate('+ campus_deg +'deg)');
	$('#campus_req_rate .ppc-progress-fill').css('-webkit-transform','rotate('+ campus_deg +'deg)');
	$('#campus_req_rate .ppc-percents span').html(campus_percent+'%');

	var $ls_college_req_rate =$('#ls_college_req_rate'),
	ls_percent = parseInt($ls_college_req_rate.data('percent')),
	ls_deg = 360*ls_percent/100;
	if (ls_percent > 50) {
		$ls_college_req_rate.addClass('gt-50');
	}
	$('#ls_college_req_rate .ppc-progress-fill').css('transform','rotate('+ ls_deg +'deg)');
	$('#ls_college_req_rate .ppc-progress-fill').css('-webkit-transform','rotate('+ campus_deg +'deg)');
	$('#ls_college_req_rate .ppc-percents span').html(ls_percent+'%');
});