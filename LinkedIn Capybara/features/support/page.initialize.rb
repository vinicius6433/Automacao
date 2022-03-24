Dir[File.join(File.dirname(__FILE__), '~\..\Automação\LinkedIn Capybara\LinkedIn Capybara\features\pages*.page.rb')].each { |file| require file }

module Page
    def login
        @login ||= LoginPage.new
    end

    def home 
        @home ||= HomePage.new
    end

    def recover 
        @recover ||= RecoverPage.new
    end
end