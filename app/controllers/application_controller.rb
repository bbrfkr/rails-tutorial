require 'mongo'
require 'securerandom'

class ApplicationController < ActionController::Base
    @@dbClient = Mongo::Client.new(ENV['MONGODB_URL'])

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
