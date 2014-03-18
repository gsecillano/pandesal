class User < ActiveRecord::Base
  belongs_to :customer
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.firstname, user.lastname = auth.info.name.split
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      if user.new_record?
        user.build_customer :name => auth.info.name
      end
      user.save!
    end
  end
end
