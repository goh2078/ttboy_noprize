<?php 
	session_start();
	header("Cache-Control:private");
	include_once(__DIR__.'/config.php');
	$body_class = '';
	$type = '';
	$typename = '';
	$score = (int)0;
	$params = parse_url($_SERVER['REQUEST_URI'])['query'];
	$checkFB = false;
	$checkFB = strpos($_SERVER['HTTP_USER_AGENT'], 'facebook');

	if(isset($_SERVER['HTTPS'])){
        $protocol = ($_SERVER['HTTPS'] && $_SERVER['HTTPS'] != "off") ? "https" : "http";
    }else{
        $protocol = 'http';
    }
	$base_url = $protocol.'://'.$_SERVER['SERVER_NAME'];
	if($_POST) {
		if($_POST['gender'] == '男' || $_POST['gender'] == '其他') {
			if($_POST['pregnant'] == '有') {
				$body_class = 'male-respondent';
			}
		}
		/* write contact data */
		$fname = $mysqli -> real_escape_string($_POST['fullname']);
		$email = $mysqli -> real_escape_string($_POST['email']);
		$phone = $mysqli -> real_escape_string($_POST['phone']);
		$age = $mysqli -> real_escape_string($_POST['age']);
		$county = $mysqli -> real_escape_string($_POST['county']);
		$gender = $mysqli -> real_escape_string($_POST['gender']);
		$pregnancy = $mysqli -> real_escape_string($_POST['pregnant']);
		$sql = "INSERT INTO contact (name, email, phone, age, county, gender, unexpected_pregnancy) VALUES ('$fname','$email','$phone','$age','$county','$gender','$pregnancy')";
		$mysqli->query($sql);
		$_SESSION['uid'] = $mysqli->insert_id;
	}
	
	if(!($_SESSION['result']) && $checkFB === false) {
		header('Location: '.$base_url);
		die();
	}

	if ($_SESSION['result']) {
		$result = $_SESSION['result'];
		if($_SESSION['result']['q1']) {
			$arr1 = $_SESSION['result']['q1'];
			$arr2 = array('op1','op2','op4','op5','op7','op9','op10','op11');
			$op1 = array_diff($arr1,$arr2);
			if($arr1 == $arr2) {
				$score += (int)1;
			}
		}
		$ansO = array('q4','q7','q14','q18','q19','q20');
		$ansX = array('q2','q3','q5','q6','q8','q9','q10','q11','q12','q13','q15','q16','q17');
		foreach($result as $key => $ans) {
			if (in_array($key, $ansO)) {
				if($ans == 1) {
					$score += (int)1;
				}
			}
			if (in_array($key, $ansX)) {
				if($ans == 0) {
					$score += (int)1;
				}
			}
		}

		/* write to db */
		$resultTodb = array();
		$uid = 0;
		if($_SESSION['uid']) {
			$uid = $_SESSION['uid'];
		}
		for($i=1 ; $i<21 ; $i++ ) {
			$resultTodb['q'.$i] = null;
		}

		if($result['q1']) {
			$arr1 = $result['q1'];
			$arr2 = array('op1','op2','op4','op5','op7','op9','op10','op11');
			$op1 = array_diff($arr1,$arr2);
			if($arr1 !== $arr2) {
				$resultTodb['q1'] = '0';
			} else  {
				$resultTodb['q1'] = '1';
			}
		}
		foreach($result as $key => $ans) {
			if (in_array($key, $ansO)) {
				if($ans == 1) {
					$resultTodb[$key] = '1';
				} else {
					$resultTodb[$key] = '0';
				}
			}
			if (in_array($key, $ansX)) {
				if($ans == 0) {
					$resultTodb[$key] = '1';
				} else {
					$resultTodb[$key] = '0';
				}
			}
		}
		$columns = "'".implode("', '",array_values($resultTodb))."'";
		$columns = str_replace("''","NULL",$columns);	
	}

	if ($score <= 6) {
		$type = 3;
	} elseif ($score > 6 && $score <= 11) {
		$type = 4;
	} elseif ($score > 11 && $score <= 15) {
		$type = 5;
	} elseif ($score > 15 && $score <= 19) {
		$type = 6;
	} elseif ($score  == 20) {
		$type = 7;
	}
	if($result['q11'] == 1 && $result['q12'] == 1) {
		$type = 2;
	}
	if($result['q5'] == 1 && $result['q6'] == 1) {
		$type = 1;
	}
	if ($params) {
		$type = substr($params,5);
	}
	$share_url = $base_url.'/result?type='.$type; 
	$_SESSION['share'] = $share_url;
	switch ($type) {
		case 1:
			$typename = '性的考古學家';
		break;
		case 2:
			$typename = '感情大師';
		break;
		case 3:
			$typename = '來自異世界的初性冒險者';
		break;
		case 4:
			$typename = '先修魔法師';
		break;
		case 5:
			$typename = '性普普藝術家';
		break;
		case 6:
			$typename = '性愛高材生';
		break;
		case 7:
			$typename = '性宗師';
		break;
	}
	/*
	if ($_SESSION['result']) {
		$sql = "INSERT INTO quiz_result (q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15, q16, q17, q18, q19, q20, result_type, uid) VALUES ($columns, '$typename', '$uid')";
		$mysqli->query($sql);
	}
	*/
?>

<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<title>性知識達人就是你</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/animations.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<meta property="og:title" content="性知識達人就是你" />
	<meta property="og:url" content="<?php print $share_url; ?>" />
	<meta property="og:description"  content="我在性知識達人測試中，被測試出來是「<?php print $typename; ?>」，快來一起跟我玩測驗，抽 iPhone14" />
	<meta property="og:image"  content="<?php echo $protocol.'://'.$_SERVER['SERVER_NAME']; ?>/img/meta/fb-<?php print $type; ?>.jpg" />
</head>
<body class="page-result <?php print $body_class?>">
  <div id="page">
  	<header>
		<div class="logo1"><a href="/"><img src="./img/logo1.png"></a></div>
	</header>
	<!-- result type1 -->
	<?php if ($type == 1): ?>
	<div class="result">
		<div class="type type1 animatedParent" data-sequence="400">
			<h1 class="animated bounceIn" data-id="1"><span class="type-text">性的<br>
				考古學家</span>
				<span class="udl udl-short animated fadeInLeft" data-id="2"></span>
				<span class="udl udl-medium udl2 animated fadeInLeft delay-250" data-id="2"></span>
			</h1>
			<div class="badge animated rotateIn" data-id="2">
				<span class="badge-label">稀有率</span>
				<span>SSR</span>
			</div>
			<div class="type-img">
				<img src="./img/result/type1.png" alt="">
			</div>
		</div>
		<div class="result-text">
		<h3>性知識率</h3>
		<p>考古學家專精於古代知識，對於明清時期的性事瞭若指掌，專長是談論五十年前的性知識，魔法抗性極高；
		缺點是對於現代科技掌握程度較少，容易受到現代知識的影響而受傷。</p>
		<h3>我可以怎麼做</h3>
		<p>如果要與世界接軌，還是要有正確的性知識唷，陰道冠，俗稱處女膜。陰道冠是陰道的一圈環性組織，它不是薄膜，
			是女性陰道口的一種彈性皺褶，而且根據研究，有超過50%的女生第一次性經驗沒有出血，也不見得會疼痛喔！！</p>
		</div>
	</div>
	<?php endif; ?>
	<!-- result type2 -->
	<?php if ($type == 2): ?>
	<div class="result">
		<div class="type type2 animatedParent" data-sequence="400">
			<h1 class="animated bounceIn" data-id="1"><span class="type-text">感情大師</span>
				<span class="udl udl-medium animated fadeInLeft delay-250" data-id="2"></span>
			</h1>
			<div class="badge animated rotateIn" data-id="2">
				<span class="badge-label">稀有率</span>
				<span>SR</span>
			</div>
			<div class="type-img">
				<img src="./img/result/type2.png" alt="">
			</div>
		</div>
		<div class="result-text">
		<h3>性知識率</h3>
		<p>感情大師專精物理攻擊，當場上有一男一女時攻擊力會瞬間加乘造成3倍傷害，認為感情關係中一定要有性行為，物理攻擊極高；因為精神式的戀愛對感情大師是未知領域，缺點是精神傷害耐性極低。</p>
		<h3>我可以怎麼做</h3>
		<p>在多元性別的概念中，有個性傾向叫「無性戀」，簡單來說，無性戀指的是無法對別人產生性慾望、無法或對它人有著低度性欲的狀態。對這些人來說，談戀愛就是真的「談」戀愛，不包含性喔（但這不代表他無法跟人發生性行為）。</p>
		</div>
	</div>
	<?php endif; ?>
	<!-- result type3 -->
	<?php if ($type == 3): ?>
	<div class="result">
		<div class="type type3 animatedParent" data-sequence="400">
			<h1 class="animated bounceIn" data-id="1">
				<span class="type-text">來自異世界<br/>的初性冒險者</span>
				<span class="udl udl-long animated fadeInLeft" data-id="2"></span>
				<span class="udl udl-ex-long udl2 animated fadeInLeft delay-250" data-id="2"></span>
			</h1>
			<div class="badge animated rotateIn" data-id="2">
				<span class="badge-label">稀有率</span>
				<span>SSR</span>
			</div>
			<div class="type-img">
				<img src="./img/result/type3.png" alt="">
			</div>
		</div>
		<div class="result-text">
		<h3>性知識率</h3>
		<p>冒險者您好，想必您一定是轉生到這個世界，對於性這件事情還沒作好準備，不知道要如何開始。如果沒有好的裝備就想要探索這個世界，一定會不知所措遍體麟傷。</p>
		<h3>我可以怎麼做</h3>
		<p>有好的裝備才能出門打怪，冒險者不見得要遠離村莊越級打怪。理解性知識也是一種自我保護的方式，沒性知識等於裸裝打怪；保護自己，就是保護另一半，多讀點書充實自己的性知識是好事!!</p>
		</div>
	</div>
	<?php endif; ?>
	<!-- result type4 -->
	<?php if ($type == 4): ?>
	<div class="result">
		<div class="type type4 animatedParent" data-sequence="400">
			<h1 class="animated bounceIn" data-id="1"><span class="type-text">性教育<br>
				先修魔法師</span>
				<span class="udl udl-short2 animated fadeInLeft" data-id="2"></span>
				<span class="udl udl-long udl2 animated fadeInLeft delay-250" data-id="2"></span>
			</h1>
			<div class="badge animated rotateIn" data-id="2">
				<span class="badge-label">稀有率</span>
				<span>SR</span>
			</div>
			<div class="type-img">
				<img src="./img/result/type4.png" alt="">
			</div>
		</div>
		<div class="result-text">
		<h3>性知識率</h3>
		<p>對性知識有了一些程度的魔法師，但要在這個殘酷的世界生存，還需要多一點點的性知識喔。</p>
		<h3>我可以怎麼做</h3>
		<p>這個世界太殘忍，多一點的性知識就是讓自己避免危險，如果你願意的話，可以找些性教育課程、協會的課程去學習，網路上也有些正確的性知識影片可供閱讀！！</p>
		</div>
	</div>
	<?php endif; ?>
	<!-- result type5 -->
	<?php if ($type == 5): ?>
	<div class="result">
		<div class="type type5 animatedParent" data-sequence="400">
			<h1 class="animated bounceIn" data-id="1"><span class="type-text">性普普<br>
				藝術家</span>
				<span class="udl udl-short3 animated fadeInLeft" data-id="2"></span>
				<span class="udl udl-short3 udl2 animated fadeInLeft delay-250" data-id="2"></span>
			</h1>
			<div class="badge animated rotateIn" data-id="2">
				<span class="badge-label">稀有率</span>
				<span>SR</span>
			</div>
			<div class="type-img">
				<img src="./img/result/type5.png" alt="">
			</div>
		</div>
		<div class="result-text">
		<h3>性知識率</h3>
		<p>普普藝術家擁有基礎的性知識，在性的世界中已具備生存條件。目前正在找尋能夠專精的項目。</p>
		<h3>我可以怎麼做</h3>
		<p>台灣人平均答對率為13.12題，學習進階知識是找自己方法，了解越多就越能讓自己在性議題上掌握全貌。是時候該探索更多的性知識與方法了！</p>
		</div>
	</div>
	<?php endif; ?>
	<!-- result type6 -->
	<?php if ($type == 6): ?>
	<div class="result">
		<div class="type type6 animatedParent" data-sequence="400">
			<h1 class="animated bounceIn" data-id="1"><span class="type-text">性愛<br>
				高材生</span>
				<span class="udl udl-short animated fadeInLeft" data-id="2"></span>
				<span class="udl udl-short3 udl2 animated fadeInLeft delay-250" data-id="2"></span>
			</h1>
			<div class="badge animated rotateIn" data-id="2">
				<span class="badge-label">稀有率</span>
				<span>SSR</span>
			</div>
			<div class="type-img">
				<img src="./img/result/type6.png" alt="">
			</div>
		</div>
		<div class="result-text">
		<h3>性知識率</h3>
		<p>在性的世界中，性愛高材生已攻防一體，對於性知識已掌握的七七八八，相信性愛高材生的你已經在台灣戰無不勝、攻無不克了。</p>
		<h3>我可以怎麼做</h3>
		<p>相信我！！你已經是台灣的PR95了，對於大部分的性知識都能理解，對性的議題非常熟稔，再一步就能成為性知識界的大師了。</p>
		</div>
	</div>
	<?php endif; ?>
	<!-- result type7 -->
	<?php if ($type == 7): ?>
	<div class="result">
		<div class="type type7 animatedParent" data-sequence="400">
			<h1 class="animated bounceIn" data-id="1"><span class="type-text">性 宗師</span>
				<span class="udl udl-medium animated fadeInLeft" data-id="2"></span>
			</h1>
			<div class="badge animated rotateIn" data-id="2">
				<span class="badge-label">稀有率</span>
				<span>UR</span>
			</div>
			<div class="type-img">
				<img src="./img/result/type7.png" alt="">
			</div>
		</div>
		<div class="result-text">
		<h3>性知識率</h3>
		<p>在性知識的領域中，性宗師已經進入無人之境，各式各樣的性知識階已爐火純青，防禦、攻擊或施法都難不到你！</p>
		<h3>我可以怎麼做</h3>
		<p>你已經是台灣人的UR了，建議你可以成為性教育界中的老師，將正確的性知識傳遞給他人！</p>
		</div>
	</div>
	<?php endif; ?>
	<div id="result-footer" class="yellow-bg result-footer align-center">
		<h4>想知道你答錯哪題嗎？</h4>
		<a href="knowledge" class="btn btn-primary">性 知 識 公 布 欄</a>
		<a href="/" class="btn btn-primary">再 玩 一 次<i class="icon-again"></i></a>
		<a class="btn btn-primary" onclick="window.open('http://www.facebook.com/sharer.php?u=<?php print $share_url; ?>','Facebook','width=600,height=300,left='+(screen.availWidth/2-300)+',top='+(screen.availHeight/2-150)+''); return false;" href="http://www.facebook.com/sharer.php?u=<?php print $share_url; ?>">分 享 連 結<i class="icon-share"></i></a>
	</div>

	<div class="cbox-contents">
		<div id="result-notice">
			<p>由於您在之前問卷中<br>
			填寫曾有讓伴侶懷孕過</p>
			<p>我們想多問您一些問題<br>
			讓更多的男性經驗可以被看見！</p>
			<a href="survey" class="btn">讓更多經驗被看見</a>
		</div>
	</div>
  </div>

<!-- Javascript -->
<script src="js/jquery-3.6.1.min.js"></script>
<script src="js/css3-animate-it.js" type="text/javascript"></script>
<script src="js/jquery.colorbox-min.js" type="text/javascript"></script>
<script src="js/main.js" type="text/javascript"></script>

</body>
</html>