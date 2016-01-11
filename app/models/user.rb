require 'securerandom'

class User < ActiveRecord::Base
  before_create :set_auth_token


  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  private
    def set_auth_token
      return if auth_token.present?
      self.auth_token = generate_auth_token
    end
    def generate_auth_token
      SecureRandom.uuid.gsub(/\-/,'')
    end
end
