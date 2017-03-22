function refreshTime(){
	$('#timeHolder').load('ajax/navbar.php?time=y');
	setTimeout(refreshTime, 30000);
}
function refreshOnline(){
	$('#onlineHolder').load('ajax/navbar.php?online=y');
	setTimeout(refreshOnline, 30000);
}
function refreshOffline(){
	$('#offlineHolder').load('ajax/navbar.php?offline=y');
	setTimeout(refreshOffline, 30000);
}
function refreshDead(){
	$('#deadHolder').load('ajax/navbar.php?dead=y');
	setTimeout(refreshDead, 60000);
}

var idleTime = 0;
$(document).ready(function () {
	//Increment the idle time counter every minute.
	var idleInterval = setInterval(timerIncrement, 60000); // 1 minute

	//Zero the idle timer on mouse movement.
	$(this).mousemove(function (e) {
		idleTime = 0;
	});
	$(this).keypress(function (e) {
		idleTime = 0;
	});
});

function timerIncrement() {
	idleTime = idleTime + 1;
	if (idleTime > 10) { // 10 minutes
		location.href = 'logout.php?message=inactivity'
	}
}