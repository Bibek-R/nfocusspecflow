using OpenQA.Selenium.Chrome;
using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



namespace webdriver.SpecFlow.StepDefinitions
{
    [Binding]
    public class Hooks
    {
        private IWebDriver driver;
        private readonly ScenarioContext _scenarioContext;



        public Hooks(ScenarioContext scenarioContext)
        {
            _scenarioContext = scenarioContext;
        }


        [BeforeScenario]
        public void SetUp()
        {
            driver = new ChromeDriver();
            _scenarioContext["mydriver"] = driver;
        }




        [AfterScenario]
        public void TearDown()
        {
            driver.Quit();
        }
    }
}
