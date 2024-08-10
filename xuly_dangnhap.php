<?php 
	session_start();
?>
<?php
	//=== TRUY XUAT NOI DUNG TU FORM =====
	$user = $_POST['txtuser'];
	$pass = $_POST['txtpass'];

	//==== GOI (CHEN) 1 TRANG WEB VAO TRANG HIEN TAI =====
	//CP:  include  ("URL");

	//==== GOI TRANG KET NOI CSDL  ====
	include  ("Config.PHP");

	//==== CAU LENH TRUY VAN (SELECT) SQL =====
	//CACH DUA 1 BIEN VAO CAU LENH SQL : - Bien Chuoi 	:	  	'" .$tenBien.  "'
	//									 - Bien So 		: 		" .$TenBien. "	=> Bo Nhay Don
	$sql = "SELECT *  FROM taikhoan WHERE user = '" .$user. "' AND pass = '" .$pass. "'";

	//======== THUC THI CAU TRUY VAN ==========
	//CP : $TenBienSql = mysqli_query(connection, query [, resultmode]);
	$result = mysqli_query($link, $sql);
	
	//========= TRA VE SO MAU TIN CAU LENH VUA THUC THI  =====
	//CP :   mysqli_num_rows ( resource $result ); 
	$num = mysqli_num_rows($result);
	if ($num > 0)	//DANG NHAP THANH CONG 
	{
		//===== DUA TUNG MAU TIN TRONG CSDL VAO MANG =====
		$rows = mysqli_fetch_array($result);
		$group = $rows['GROUP_TK'];
		switch($group)
		{
			case 1:
			{	header ("location: ADMIN.PHP");  	break;	}
			case 2:
			{	header ("location: URBANWEAR.PHP");  	break;	}
		}
	}
	else
		header ("location: dangnhapURBAN.PHP");
	echo "Sai Tên Tài Khoản Hoặc Mật Khẩu !!!";
?>
