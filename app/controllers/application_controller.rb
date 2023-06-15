require 'mongo'
require 'securerandom'

class ApplicationController < ActionController::Base
    def hello
        render html: 'this is root page.'
    end
end
