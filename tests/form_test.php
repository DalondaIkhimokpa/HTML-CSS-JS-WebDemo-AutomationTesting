<?php
// Simulate form submission
$response = file_get_contents(
    'http://localhost/form-handler.php',
    false,
    stream_context_create([
        'http' => [
            'method' => 'POST',
            'header' => 'Content-type: application/x-www-form-urlencoded',
            'content' => http_build_query(['name' => 'Test', 'email' => 'test@test.com'])
        ]
    ])
);

echo $response;
if (strpos($response, "PHP FORM WORKED!") !== false) {
    exit(0); // Success
} else {
    exit(1); // Fail
}