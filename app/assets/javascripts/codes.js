
var get_new_code = function() {
  var id = $("#codes").data("code-id");
  $.get("/codes/" + id + ".json", function(data){
    var new_code = data;
    $("#codes").prepend(new_code + "<br />");
  });
  var tt = setTimeout("get_new_code()",30000);
}

$(function(){
  if ($("#codes").exists()) {
    var t = setTimeout("get_new_code()",30000);
  }
})  
