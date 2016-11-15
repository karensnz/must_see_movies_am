class Movie < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :years, :numericality => { :greater_than => 1870, :less_than_or_equal_to => 2050 }

end
