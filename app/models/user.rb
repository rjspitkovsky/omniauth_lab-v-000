class User < ActiveRecord::Base

  #has_secure_password

  def self.find_or_create_by_omniauth(auth_hash)
    self.where(:email => auth_hash[:info][:email]).first_or_create do |user|
      user.name = auth_hash[:info][:name]
      user.uid = auth_hash[:info][:uid]
      user.image = auth_hash[:info][:image]
    end
  end
end
