class User < ActiveRecord::Base
  has_many :authentications, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  # attr_accessible :email, :password, :password_confirmation, :remember_me, :username

  def apply_omniauth(omni)
    authentications.build(:provider => omni['provider'],
                          :uid => omni['uid'],
                          :nickname => omni['info']['nickname'],
                          :name => omni['info']['name'],
                          :image => omni['info']['image'],
                          :token => omni['credentials'].token,
                          :token_secret => omni['credentials'].secret)
    if self.sign_in_count == 0
      import_first_auth
    end
  end

  def password_required?
    (authentications.empty? || !password.blank?) && super
  end

  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes(params, *options)
    else
      super
    end
  end

  private

  def import_first_auth
    self.name = authentications.first.name
    self.username = authentications.first.nickname
    self.image = authentications.first.image
    create_profile_url
  end

  def create_profile_url
    self.profile_url = '@' + username.downcase.strip.parameterize
  end

end
