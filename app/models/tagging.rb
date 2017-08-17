class Tagging < ApplicationRecord
  # Direct associations

  belongs_to :skill

  belongs_to :student,
             :class_name => "User",
             :foreign_key => "user_id"

  # Indirect associations

  # Validations

end
