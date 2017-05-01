var addleafs = function(score){
  var $leaf = $('<img>').attr("src", 'https://placehold.it/100x100').addClass('leaf');
  $(".result").append($leaf);
}

addleafs();
