class Registration < ApplicationRecord
  # Direct associations

  belongs_to :course

  belongs_to :student,
             :class_name => "User",
             :foreign_key => "user_id"

  # Indirect associations

  # Validations

end
