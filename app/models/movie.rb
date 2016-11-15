class Movie < ApplicationRecord
  # Direct associations

  has_many   :characters,
             :dependent => :destroy

  belongs_to :director,
             :counter_cache => :filmography_count

  # Indirect associations

  # Validations

  validates :director_id, :presence => true

  validates :title, :uniqueness => { :scope => [:years] }

  validates :title, :presence => true

  validates :years, :numericality => { :greater_than => 1870, :less_than_or_equal_to => 2050 }

end
