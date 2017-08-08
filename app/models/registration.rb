class Registration < ApplicationRecord
  # Direct associations

  belongs_to :course

  belongs_to :student

  # Indirect associations

  # Validations

end
