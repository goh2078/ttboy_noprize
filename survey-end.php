<?php 
session_start();
$share_url = $_SESSION['share'];
header("Cache-Control:private");
include_once(__DIR__.'/config.php');
if($_POST) {
	$q1 = $q2 = $q3 = $q4 = $q5 = $q6 = $q7 = $q8 = $q9 = NULL;
	$q1 = $mysqli -> real_escape_string($_POST['amount']);
	$q2 = $_POST['pregnant'];
	$q2 = implode(", ",array_values($q2));
	$q3 = $mysqli -> real_escape_string($_POST['age']);
	$q4 = $_POST['pregnant-reason'];
	$q4 = implode(", ",array_values($q4));
	$q5 = $mysqli -> real_escape_string($_POST['pregnant-time']);
	$q6 = $mysqli -> real_escape_string($_POST['pregnant-disc']);
	$q7 = $mysqli -> real_escape_string($_POST['pregnant-decision']);
	$q8 = $mysqli -> real_escape_string($_POST['pregnant-help1']);
	$q9 = $mysqli -> real_escape_string($_POST['pregnant-help2']);
	$agree = $_POST['action'];
	$uid = 0;
	if($_SESSION['uid']) {
		$uid = $_SESSION['uid'];
	}
	$sql = "INSERT INTO man_feeling (q1, q2, q3, q4, q5, q6, q7, q8, q9, interview, uid) VALUES ('$q1','$q2','$q3','$q4','$q5','$q6','$q7','$q8','$q9','$agree','$uid')";
	$mysqli->query($sql);
}

?>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<title>性知識達人就是你</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/animations.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body class="page-survey-end">
  <div id="page">
  	<header>
		<div class="logo1"><a href="/"><img src="./img/logo1.png"></a></div>
	</header>
	<div class="finish yellow-bg">
			<div class="quiz-info align-center animatedParent">
				<div class="finish-tit animated bounceIn">FINISH</div>
				<p class="animated bounceIn">本次活動到此結束 <br>
				謝謝您的協助</p>
			</div>
	</div>
	<div id="result-footer" class="yellow-bg result-footer align-center">
		<h4>問卷詳細解釋在這裡！</h4>
		<a href="knowledge" class="btn btn-primary">性 知 識 公 布 欄</a>
		<a href="/" class="btn btn-primary">再 玩 一 次<i class="icon-again"></i></a>
		<a class="btn btn-primary" onclick="window.open('http://www.facebook.com/sharer.php?u=<?php print $share_url; ?>','Facebook','width=600,height=300,left='+(screen.availWidth/2-300)+',top='+(screen.availHeight/2-150)+''); return false;" href="http://www.facebook.com/sharer.php?u=<?php print $share_url; ?>">分 享 連 結<i class="icon-share"></i></a>
	</div>
	<?php include('footer.php'); ?>
		
  </div>

<!-- Javascript -->
<script src="js/jquery-3.6.1.min.js"></script>
<script src="js/css3-animate-it.js" type="text/javascript"></script>
<script src="js/jquery.colorbox-min.js" type="text/javascript"></script>
<script src="js/main.js" type="text/javascript"></script>

</body>
</html>
