namespace :data do
  desc "SCRAPE DATA FROM SOURCE"
  task scrape_image_info: :environment do

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

  end

end
