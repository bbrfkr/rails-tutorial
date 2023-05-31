class ApplicationController < ActionController::Base
    def hello
        render html: "Hello, Rails!"
    end

    def goodbye
        render html: "goodbye!"
    end
end
