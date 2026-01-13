# frozen_string_literal: true

module Models
  class User < Sequel::Model
    include Shield::Model

    EMAIL_REGEX = /^[^@]+@[^.]+\..+$/
  
    # one_to_many :user_parties

    def validate
      super
      validates_presence [
        :username, 
        :crypted_password
      ]
      validates_max_length 320, :username
      validates_max_length 192, :crypted_password

      validates_format EMAIL_REGEX, :username
    end

    # shield definition
    def self.fetch(username)
      self.find(username: username)
    end

    # shield mapping
    def id
      self.user_id
    end

  end
end
