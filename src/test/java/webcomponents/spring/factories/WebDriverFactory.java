package webcomponents.spring.factories;

import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebDriver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;
import org.springframework.context.annotation.Lazy;
import webcomponents.drivers.implementation.BrowserDriver;
import webcomponents.tools.directories.BROWSER;

import java.util.concurrent.TimeUnit;

@Configuration
public class WebDriverFactory {
    WebDriver wb;

    @Bean("chrome")
    @DependsOn("BrowserDriver")
    WebDriver getWebDriverChrome(@Autowired BrowserDriver browserDriver){

        this.wb = browserDriver.getDriver(BROWSER.CHROME);
        setWindowsSettings(new Dimension(1500, 900),10);
        return wb;
    }

    @Lazy(true)
    @Bean ("firefox")
    @DependsOn("BrowserDriver")
    WebDriver getWebDriverFirefox(@Autowired BrowserDriver browserDriver){

        this.wb = browserDriver.getDriver(BROWSER.FIREFOX);
        setWindowsSettings(null, 10);
        return wb;
    }

    private void setWindowsSettings(Dimension dimension, int sec){
        if (dimension == null)
            wb.manage().window().maximize();
        else wb.manage().window().setSize(dimension);
        wb.manage().timeouts().implicitlyWait(sec, TimeUnit.SECONDS);

    }
}
