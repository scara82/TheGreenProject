class Score < ApplicationRecord
  has_many :tests
  belongs_to :user
end
