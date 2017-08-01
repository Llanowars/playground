class Director < ApplicationRecord
  has_many :movies

  include PgSearch
  multisearchable against: [:title, :syllabus]
end
