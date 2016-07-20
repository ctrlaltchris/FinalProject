console.log('im loading bitch')

$(document).ready(function(){
 $('.collapsible').collapsible({
   accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
 });

$('.agentsite').click(function({
      console.log("Click listener working")
  })
);


});

$('#test').on('click', function(){
  console.log('clicked something ')
})
