<?php
use PHPUnit\Framework\TestCase;
use Facebook\WebDriver\Remote\RemoteWebDriver;
use Facebook\WebDriver\Remote\DesiredCapabilities;
use Facebook\WebDriver\WebDriverBy;
use Facebook\WebDriver\WebDriverExpectedCondition;

class FormHandlerSeleniumTest extends TestCase
{
    protected $webDriver;

    protected function setUp(): void
    {
        $host = 'http://localhost:9515'; // ChromeDriver
        $this->webDriver = RemoteWebDriver::create($host, DesiredCapabilities::chrome());
    }

    public function testFormSubmission()
    {
        $this->webDriver->get('http://localhost:8080/about.html');
    
        // Fill form
        $this->webDriver->findElement(WebDriverBy::name('name'))->sendKeys('Test');
        $this->webDriver->findElement(WebDriverBy::name('email'))->sendKeys('test@test.com');
        $this->webDriver->findElement(WebDriverBy::cssSelector('button[type="submit"]'))->click();
    
        // Add debug block here:
        try {
            $this->webDriver->wait(5)->until(
                WebDriverExpectedCondition::visibilityOfElementLocated(
                    WebDriverBy::xpath("//*[contains(text(), 'PHP FORM WORKED!')]")
                )
            );
        } catch (Exception $e) {
            file_put_contents('debug_page.html', $this->webDriver->getPageSource());
            echo "Saved page source to debug_page.html\n";
            throw $e;
        }
    
        $bodyText = $this->webDriver->findElement(WebDriverBy::tagName('body'))->getText();
        $this->assertStringContainsString('PHP FORM WORKED!', $bodyText);
    }
}   