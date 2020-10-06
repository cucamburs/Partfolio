package webcomponents.drivers.interfaces;
import org.openqa.selenium.WebDriver;
import webcomponents.tools.directories.BROWSER;

public interface Drivers {
    public WebDriver getDriver(BROWSER browser);
}

