class Tagging < ApplicationRecord
  # Direct associations

  belongs_to :skill

  belongs_to :team

  belongs_to :student

  # Indirect associations

  # Validations

end
