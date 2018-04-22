class User < ActiveRecord::Base

  #has_secure_password

  def self.find_or_create_by_omniauth(auth_hash)
    self.where(:uid => auth_hash[:info][:uid]).first_or_create do |user|
      user.name = auth_hash[:info][:name]
      user.email = auth_hash[:info][:email]
      user.image = auth[:info][:image]
    end
  end
end
