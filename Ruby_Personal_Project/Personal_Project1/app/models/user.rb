class User < ApplicationRecord
    has_secure_password
   validates :email, presence: true, length: {minimum: 3}, format: {with: URI::MailTo::EMAIL_REGEXP}
end
