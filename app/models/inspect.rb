class Inspect < ApplicationRecord
  mount_uploader :images,ImageUploader
  
  validates :car_name, presence: true
  validates :name, presence: true
  validates :process, presence: true
  validates :worker, presence: true
  validates :shop_name, presence: true
  validates :description, presence: true
  validates :accrual_date, presence: true
  validates :check1, presence: true
  validates :check2, presence: true
  validates :check3, presence: true
  validates :check4, presence: true
  
  belongs_to :user
end
