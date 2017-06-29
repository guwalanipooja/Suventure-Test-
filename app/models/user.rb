class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :username,
                      :presence => true,
                      :uniqueness => true,
                      :length => {
                        :maximum => 1,
                        :tokenizer => lambda {|str| str.scan(/\w+/)},
                        :too_long => "Name must be one word"
                      },
                      :format => {
                        :with => /\A[a-zA-Z0-9]+\Z/,
                        :with => /\A[a-zA-Z]+([a-zA-Z]|\d)*\Z/,
                        :message => "Should not conatin special characters and white spaces."
                      }
  attr_accessor :login


  def self.find_for_database_authentication(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      elsif conditions.has_key?(:username) || conditions.has_key?(:email)
        where(conditions.to_h).first
      end
    end
  has_many :posts
  has_secure_token
end
