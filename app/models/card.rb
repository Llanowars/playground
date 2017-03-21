class Card < ApplicationRecord
  belongs_to :users, optional: true

  validates :link, presence: true
end
