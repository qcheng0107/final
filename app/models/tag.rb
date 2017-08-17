class Tag < ApplicationRecord
  # Direct associations

  belongs_to :skill

  belongs_to :team

  # Indirect associations

  # Validations

end
