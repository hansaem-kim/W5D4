class User < ApplicationRecord

    validates :email, presence: true, uniqueness: true

    has_many :submitted_url,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :ShortenedURL

end
