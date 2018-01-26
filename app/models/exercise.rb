class Exercise < ApplicationRecord
  belongs_to :category
  mount_uploader :imagen, FotoUploader
end
