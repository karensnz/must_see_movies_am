class Movie < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :director_id, :presence => true

  validates :title, :uniqueness => { :scope => [:years] }

  validates :title, :presence => true

  validates :years, :numericality => { :greater_than => 1870, :less_than_or_equal_to => 2050 }

end
