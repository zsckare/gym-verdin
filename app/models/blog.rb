class Blog < ApplicationRecord
  belongs_to :coach
  has_many :posts
end
