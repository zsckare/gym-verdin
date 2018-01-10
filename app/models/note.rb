class Note < ApplicationRecord
  belongs_to :client
  belongs_to :coach
end
