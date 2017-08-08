class Course < ApplicationRecord
  # Direct associations

  has_many   :sessions,
             :dependent => :nullify

  has_many   :registrations,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
