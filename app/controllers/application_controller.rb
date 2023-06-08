class ApplicationController < ActionController::Base
    def hello
        render html: "Hello, ArgoCD!"
    end

    def goodbye
        render html: "goodbye!"
    end
end
