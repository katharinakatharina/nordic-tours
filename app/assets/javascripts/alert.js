$(document).on('turbolinks:load', function(){
  console.log($(".alert"));
  $(".alert").delay(4000).fadeOut("slow");
});
