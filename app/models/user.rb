
require 'digest'
class User < ActiveRecord::Base
	attr_accessor :password
	has_one :profile
    has_many :articles, -> { order ('ranking DESC, author DESC') }
    has_many :replies, :through => :articles, :source => :comments
    validates_uniqueness_of :email
    validates_presence_of :email
    validates_length_of :email, :within 5..50
    validates_confirmation_of :password
    validates_presence_of :password, if =>password_required?

    before_save :encrypt_new_password

    def self.authenticate(email,password)
    	user.find_by_email(email)
    	return user if user && user.authenticated?(password)
    end

    def authenticated?(password)
    	self.hashed_password == encrypt(password)
    end

  protected

  	def encrypt_new_password
  		return if password.blank?
  		self.hashed_password = encrypt(password)
  	end

  	def password_required?
  		hashed_password.blank || password.present?
  	end

  	def encrypt(string)
  		Digest::SHA1.hexdigest(string)
  	end

end
