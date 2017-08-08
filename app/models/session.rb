class Session < ApplicationRecord
  # Direct associations

  belongs_to :quarter

  belongs_to :course,
             :counter_cache => true

  # Indirect associations

  # Validations

end
