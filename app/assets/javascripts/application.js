//= jquery
//= require turbolinks
//= require_tree .
//= require_self
$("main").on('click', '.close', function(e){
  var target
  if(this.dataset.parent) target = $(this).closest(this.dataset.parent)
  else target = $(this).parent()
  if(this.dataset.remove){
    if(this.dataset.remove !== "false" && this.dataset.remove !== "0")target.remove()
  }else target.hide()
  if(this.dataset.action)eval(this.dataset.action)
})

$("#usersactivities_filter button").click((e)=>{alert('sorry, those filters are not yet actived')})
