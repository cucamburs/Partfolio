package webcomponents.drivers.implementation;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.opera.OperaDriver;
import org.springframework.stereotype.Component;
import webcomponents.drivers.interfaces.Drivers;
import webcomponents.tools.directories.BROWSER;

@Component("BrowserDriver")
public class BrowserDriver implements Drivers {
    public BrowserDriver() {

        System.setProperty("webdriver.chrome.driver", "C:/DevelopingTools/Selenium/WebDrivers/Chrome/chromedriver.exe");
        System.setProperty("webdriver.gecko.driver","C:/DevelopingTools/Selenium/WebDrivers/Firefox/geckodriver.exe");
        System.setProperty("webdriver.edge.driver","C:/DevelopingTools/Selenium/WebDrivers/Edge/msedgedriver.exe");
        System.setProperty("webdriver.opera.driver","C:/DevelopingTools/Selenium/WebDrivers/Opera/operadriver.exe");

    }


    public WebDriver getDriver(BROWSER browser) {

        switch (browser){

            case FIREFOX: return  (WebDriver) new FirefoxDriver();
            case CHROME: return (WebDriver) new ChromeDriver();
            case EDGE: return (WebDriver) new EdgeDriver();
            case OPERA: return (WebDriver) new OperaDriver();
            default:
                return (WebDriver) new EdgeDriver();

        }
    }
}
