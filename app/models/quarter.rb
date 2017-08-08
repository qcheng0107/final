class Quarter < ApplicationRecord
  # Direct associations

  has_many   :sessions,
             :dependent => :nullify

  # Indirect associations

  has_many   :courses,
             :through => :sessions,
             :source => :course

  # Validations

end
