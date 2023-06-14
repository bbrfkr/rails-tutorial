require 'mongo'
require 'securerandom'

class ApplicationController < ActionController::Base
    mongoUrl = ENV['MONGODB_URL']
    @@dbClient = Mongo::Client.new(mongoUrl)

    def insert
        collection = @@dbClient[:test]
        record_uuid = SecureRandom.uuid
        document = {
            record_uuid: record_uuid
        }
        result = collection.insert_one(document)
        render html: "The uuid of generated record is '#{record_uuid}'."
    end
end
