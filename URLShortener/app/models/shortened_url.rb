class ShortenedURL < ApplicationRecord



    def self.random_code
        short_url = SecureRandom.urlsafe_base64

        until !ShortenedURL.exists?(short_url)
            short_url = SecureRandom.urlsafe_base64
        end

        short_url
    end


    def self.create_new_short_url(user, long_url)
        ShortenedURL.create!([long_url: long_url, short_url: ShortenedURL.random_code, user_id: user.id])
    end

    belongs_to :submitter,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User


end
