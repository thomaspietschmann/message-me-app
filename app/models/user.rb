class User < ApplicationRecord
    validates :username, uniqueness: { case_sensitive: false }, presence: true, length: { minimum: 3, maximum: 15 }
    validates :password, presence: true
    has_many :messages, dependent: :delete_all

    has_secure_password
end

