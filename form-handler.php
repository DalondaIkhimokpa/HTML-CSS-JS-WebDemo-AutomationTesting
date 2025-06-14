<?php
// Enable error reporting first
header("Content-Type: text/html");
ini_set('display_errors', 1);
error_reporting(E_ALL);

// Check if this is an API request (from PHPUnit)
if (isset($_SERVER['HTTP_X_REQUESTED_WITH']) || php_sapi_name() === 'cli') {
    header('Content-Type: text/plain');
    
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        echo "PHP FORM WORKED!";
        exit;
    }
    
    header("HTTP/1.0 405 Method Not Allowed");
    echo "Form submission required";
    exit;
}

// Normal web request
header('Content-Type: text/html');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    echo "<h1>PHP FORM WORKED!</h1>";
    echo "<pre>";
    print_r($_POST);
    echo "</pre>";
    echo "<p><a href='about.html'>Back to About page</a></p>";
} else {
    echo "<h1>No form data submitted</h1>";
    echo "<p>This script should be accessed via a form submission.</p>";
    echo "<p><a href='about.html'>Back to About page</a></p>";
}
?>
