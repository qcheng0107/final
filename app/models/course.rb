class Course < ApplicationRecord
  # Direct associations

  has_many   :teams,
             :dependent => :destroy

  has_many   :sessions,
             :dependent => :nullify

  has_many   :registrations,
             :dependent => :destroy

  # Indirect associations

  has_many   :students,
             :through => :registrations,
             :source => :student

  # Validations

end
