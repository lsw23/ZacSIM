<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>hover demo</title>
  <style>
  ul {
    margin-left: 20px;
    color: blue;
  }
  li {
    cursor: default;
  }
  span {
    color: red;
  }
  </style>
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
 
<ul>
  <li>Milk</li>
  <li>Bread</li>
  <li class="fade">Chips</li>
  <li class="fade">Socks</li>
</ul>
 
<script>
$( "li" ).hover(
  function() {
    $( this ).append( $( "<span> ***</span>" ) );
  }, function() {
    $( this ).find( "span:last" ).remove();
  }
);
 
$( "li.fade" ).hover(function() {
  $( this ).fadeOut( 100 );
  $( this ).fadeIn( 500 );
});
</script>
 
</body>
</html>