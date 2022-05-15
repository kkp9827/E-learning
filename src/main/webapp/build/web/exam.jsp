<!DOCTYPE HTML>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
p {
  text-align: center;
  font-size: 60px;
  margin-top:0px;
}
</style>
<link href="clock/timeTo.css" type="text/css" rel="stylesheet"/></head>
    <body >
    <div id="demo"></div>
    <script src="jquery.min.js"></script> 
<script>window.jQuery || document.write('<script src="jquery-1.9.1.min.js"><\/script>')</script> 
<script src="clock/jquery.timeTo.js"></script>  
<script>
// Set timer countdown in seconds with callback

$('#demo').timeTo(100, function(){
    alert('Countdown finished');
});

var <a href="https://www.jqueryscript.net/time-clock/">date</a> = getRelativeDate(20);

document.getElementById('date-str').innerHTML = date.toString();



// Simple digital clock

$('#demo').timeTo();

function getRelativeDate(days, hours, minutes){
    var date = new Date(Date.now() + 60000 /* milisec */ * 60 /* minutes */ * 24 /* hours */ * days /* days */);

    date.setHours(hours || 0);
    date.setMinutes(minutes || 0);
    date.setSeconds(0);

    return date;
} 
    
</script>


</head>

</body>
</html>
