class Topic < ApplicationRecord
  mount_uploader :images,ImageUploader
  
  belongs_to :user
end
