<?php
	//==== MO DUONG TRUYEN VA KN CSDL ======
	//CP:  $TenBienKNCSDL = mysqli_connect(Servername, username, password);
	//==== KN & MO CSDL ======
	//CP:  $TenBienKN&MoCSDL = mysqli_connect(Servername, username, password, dbname [,port] [,socket]);
	$link = mysqli_connect("Localhost", "root", "", "webquanaonam");

	//------Xac Lap Font UNICODE Cho Trang Web -------
	mysqli_set_charset($link, "UTF8");
	
	//=== KIEM TRA NEU KN  ===
/*	if (mysqli_connect_errno())
	{
		echo "Ket Noi Khong Thanh Cong " . mysqli_connect_error();
		exit();
	}
*/	
	if (!$link)
//		echo "Ket Noi Thanh Cong !";
//	else
		echo "Ket Noi Khong Thanh Cong !";
	
?>