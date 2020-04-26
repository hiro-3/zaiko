class Topic < ApplicationRecord
  
  mount_uploader :images,ImageUploader
  
  validates :car_name, presence: true
  validates :car_type, presence: true
  validates :process, presence: true
  validates :worker, presence: true
  validates :shop_name, presence: true
  validates :description, presence: true
  validates :accrual_date, presence: true
  validates :subject, presence: true
  validates :check, acceptance: true
  
  belongs_to :user
end
