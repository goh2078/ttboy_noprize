<?php
$path = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

switch ($path) {
	case '/':
        require __DIR__ . '/front.php';
        break;
    case '/webform':
        require __DIR__ . '/webform.php';
        break;
	case '/result':
		require __DIR__ . '/result.php';
		break;
	case '/knowledge':
		require __DIR__ . '/knowledge.php';
		break;
	case '/survey':
		require __DIR__ . '/survey.php';
		break;
	case '/survey-end':
		require __DIR__ . '/survey-end.php';
		break;
	default:
		http_response_code(404);
	break;
}
?>
