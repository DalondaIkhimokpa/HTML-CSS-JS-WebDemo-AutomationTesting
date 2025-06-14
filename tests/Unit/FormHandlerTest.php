<?php
use PHPUnit\Framework\TestCase;

class FormHandlerTest extends TestCase
{
    public function testFormSubmission()
    {
        $url = 'http://localhost:8080/form-handler.php';
        
        $response = file_get_contents(
            $url,
            false,
            stream_context_create([
                'http' => [
                    'method' => 'POST',
                    'header' => "Content-type: application/x-www-form-urlencoded\r\n" .
                                "X-Requested-With: XMLHttpRequest",
                    'content' => http_build_query([
                        'name' => 'Test',
                        'email' => 'test@test.com'
                    ])
                ]
            ])
        );

        $this->assertStringContainsString("PHP FORM WORKED!", $response);
    }
}