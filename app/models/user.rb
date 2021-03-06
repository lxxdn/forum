class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:google_oauth2]

  mount_uploader :image, IconPhotoUploader

  ## Database authenticatable
  ## twitter auth info
  field :provider, :type => String
  field :uid, :type => String

  ##use name
  field :name, :type => String

  validates_uniqueness_of :name

  field :email,              :type => String, :default => ""
  field :encrypted_password, :type => String, :default => ""

  field :image, :type => String

  ## Recoverable
  field :reset_password_token,   :type => String
  field :reset_password_sent_at, :type => Time

  ## Rememberable
  field :remember_created_at, :type => Time

  ## Trackable
  field :sign_in_count,      :type => Integer, :default => 0
  field :current_sign_in_at, :type => Time
  field :last_sign_in_at,    :type => Time
  field :current_sign_in_ip, :type => String
  field :last_sign_in_ip,    :type => String

  has_many :posts, :dependent => :destroy
  has_many :comments, :dependent => :destroy, inverse_of: :authors

  ACCESSABLE_ATTRS=[:name, :email, :password, :password_confirmation, :provider, :uid]

  ## Confirmable
  # field :confirmation_token,   :type => String
  # field :confirmed_at,         :type => Time
  # field :confirmation_sent_at, :type => Time
  # field :unconfirmed_email,    :type => String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, :type => Integer, :default => 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    :type => String # Only if unlock strategy is :email or :both
  # field :locked_at,       :type => Time

  ## Token authenticatable
  # field :authentication_token, :type => String

  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(:email => data["email"]).first

    unless user
    user = User.create(name: data["name"],
         email: data["email"],
         remote_image_url: data["image"],
         password: Devise.friendly_token[0,20]
        )
    data.each do |key,value| 
      puts "#{key} => #{value}"
    end

    end
    user
  end
end
