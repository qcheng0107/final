class Team < ApplicationRecord
  # Direct associations

  belongs_to :course

  # Indirect associations

  has_one    :student,
             :through => :course,
             :source => :students

  # Validations

end
