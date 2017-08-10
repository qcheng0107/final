class Team < ApplicationRecord
  # Direct associations

  has_many   :taggings,
             :dependent => :destroy

  belongs_to :course

  # Indirect associations

  has_many   :skills,
             :through => :taggings,
             :source => :skill

  has_one    :student,
             :through => :course,
             :source => :students

  # Validations

end
