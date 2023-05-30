class ApplicationController < ActionController::Base
    def hello
        render html: "hora, mundo!"
    end

    def goodbye
        render html: "goodbye!"
    end
end
