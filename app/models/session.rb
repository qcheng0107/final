class Session < ApplicationRecord
  # Direct associations

  has_many   :teams,
             :dependent => :destroy

  belongs_to :course,
             :counter_cache => true

  # Indirect associations

  # Validations

end
