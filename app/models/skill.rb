class Skill < ApplicationRecord
  # Direct associations

  has_many   :taggings,
             :dependent => :destroy

  # Indirect associations

  has_many   :teams,
             :through => :taggings,
             :source => :team

  has_many   :students,
             :through => :taggings,
             :source => :student

  # Validations

end
