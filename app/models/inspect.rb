class Inspect < ApplicationRecord
  mount_uploader :images,ImageUploader
  
  validates :car_name, presence: true
  validates :car_type, presence: true
  validates :process, presence: true
  validates :worker, presence: true
  validates :shop_name, presence: true
  validates :accrual_date, presence: true
  validates :judge1, presence: true
  validates :judge2, presence: true
  validates :judge3, presence: true
  validates :judge4, presence: true
  validates :check, presence: true
  validates :mold_type, acceptance: true
  
  belongs_to :user
end
