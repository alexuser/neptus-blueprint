# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


jQuery ->
  $("#user_college_id").change ->
    user_college = $(this).val()
    $.ajax "major_select/update_majors",
      data:
        college_id: user_college

      type: "POST"
      success: (result) ->
        jQuery("#versionsDiv").html result

      error: ->
        alert "Error"