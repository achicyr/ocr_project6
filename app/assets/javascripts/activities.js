//= require_tree .
//= require_self

/*
$(btn_show_log_form).on("click", function(e){
  $(this).closest(".card").addClass('beforeoverall on')
})
*/
$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})
