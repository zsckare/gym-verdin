class Coach < ApplicationRecord
  belongs_to :discipline
  has_one :blog
  has_many :assessments
end
