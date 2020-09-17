namespace :data do
  desc "SCRAPE DATA FROM SOURCE"
  task scrape_image_urls: :environment do

    #Capybara Configurations
    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, browser: :chrome)
    end
    Capybara.javascript_driver = :chrome
    Capybara.configure do |config|
      config.default_max_wait_time = 10
      config.default_driver = :selenium
    end

    #Initialize visit
    browser = Capybara.current_session
    driver = browser.driver.browser
    browser.visit "https://digitalcollections.nypl.org/search/index?filters%5Brights%5D%5B%5D=pd&filters%5Btype%5D=still+image&keywords=#"

    #Scroll to bottom of page to trigger lazy load
    def lazy_load(browser)
      browser.execute_script('window.scrollTo(0, document.body.scrollHeight)')
      lenOfPage = browser.evaluate_script('document.body.scrollHeight')
      match = false
      while match == false
        lastCount = lenOfPage
        browser.execute_script('window.scrollTo(0, document.body.scrollHeight)')
        sleep(1)
        lenOfPage = browser.evaluate_script('document.body.scrollHeight')
        if lastCount == lenOfPage
          match = true
        end
      end
    end
    sleep(2)
    lazy_load(browser)

    #Start loop for all pages
    last_page = false
    while last_page == false
      full_source = browser.body
      doc = Nokogiri::HTML(full_source)
      byebug
      images = doc.css('.items')
    end

  end

end
