
$(document).ready(function(){
 $('.collapsible').collapsible({
   accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
 });

 $('div.s6 a1').leanModal();

new domainr.SearchBox({
  mashapeKey: 'rZgC4DqgNbmsh9mKxshkDrGd4pdYp1W1pP6jsnopatNptaoljs',
  // clientId: 'yourClientId', // or alternatively your clientId (for high-volume customers), in which case you don't need a Mashape key
  observe: document.getElementById('search'),
  renderTo: document.getElementById('results'),
  limit: 10, // limit to 10 results
  registrar: 'namecheap.com', // only return a registrar's supported TLDs
  defaults: [ 'coffee', 'rocks', 'co', 'io' ], // include these TLDs by default
  onSelect: function(result) {
    window.open('https://api.domainr.com/v2/register?registrar=namecheap.com&domain=' + result.domain);
  }
});

});
