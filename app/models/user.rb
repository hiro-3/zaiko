class User < ApplicationRecord
  attr_accessor :activation_token  
  before_save :downcase_email                                                
  before_create :create_activation_digest 
  validates :name, presence: true, length: {maximum: 15}
  
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
  
  
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*\d)[a-z\d]{8,32}+\z/i 
  #半角英数字をそれぞれ1種類以上含む8文字以上32文字以下の正規表現
  validates :password, presence: true, length: {minimum: 8, maximum: 32},
  format: { with: VALID_PASSWORD_REGEX}
  
  has_secure_password
  
 has_many :topics
 has_many :inspects
 
 private
 
 def downcase_email
    self.email = email.downcase                                                
 end
 
 def create_activation_digest
    self.activation_token   =   User.new_token                                  
    self.activation_digest  =   User.digest(activation_token) 
 end
end  
