class Inspect < ApplicationRecord
  mount_uploader :images,ImageUploader
  validates :mold_type, acceptance: true
  
  belongs_to :user
end
