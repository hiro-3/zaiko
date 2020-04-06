class Topic < ApplicationRecord
  mount_uploader :images,ImageUploader
end
