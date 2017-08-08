class Quarter < ApplicationRecord
  # Direct associations

  has_many   :sessions,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
