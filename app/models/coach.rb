class Coach < ApplicationRecord
  include BCrypt
  belongs_to :discipline
  has_one :blog
  has_many :assessments

    def password
      @password ||= Password.new(password_hash)
    end
  
    def password=(new_password)
      @password = Password.create(new_password)
      self.password_hash = @password
    end
end
