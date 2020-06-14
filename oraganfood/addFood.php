<?php
header("content-type:text/javascript;charset=utf-8");
error_reporting(0);
error_reporting(E_ERROR | E_PARSE);
$link = mysqli_connect('localhost', 'root', '', "oraganfood");

if (!$link) {
    echo "Error: Unable to connect to MySQL." . PHP_EOL;
    echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;

    exit;
}

if (!$link->set_charset("utf8")) {
    printf("Error loading character set utf8: %s\n", $link->error);
    exit();
	}

if (isset($_GET)) {
	if ($_GET['isAdd'] == 'true') {

		$idShop = $_GET['idShop'];
		$NameFood = $_GET['NameFood'];
		$Price = $_GET['Price'];
		$Detail = $_GET['Detail'];
		$PathImage = $_GET['PathImage'];		
		
		//$sql = "INSERT INTO usertable(id, ChooseType, Name, User, Password) VALUES (null,'$ChooseType','$Name','$User','$Password')";		
		$sql = "INSERT INTO `foodtable`(`id`, `idShop`, `NameFood`, `Price`, `Detail`, `PathImage`) VALUES (Null,'$idShop','$NameFood','$Price','$Detail','$PathImage')";
		//ep 25 ไม่ต้องแก้ api addUser ยัง insert ได้ user สมัครใหม่ได้
		//แต่พอไปถึง ep27 คนที่สมัครใหม่จาก ep25 login เข้าระบบไม่ได้ ย้อนมาแก้
		


		$result = mysqli_query($link, $sql);

		if ($result) {
			echo "true";
		} else {
			echo "false";
		}

	} else echo "Welcome Master UNG";

}
	mysqli_close($link);
?>
