class User < ActiveRecord::Base
  has_one :profile



    def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth[:provider]
      user.uid = auth[:uid]
    end

  end


end
