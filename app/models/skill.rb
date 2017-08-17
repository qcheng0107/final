class Skill < ApplicationRecord
  # Direct associations

  has_many   :capabilities,
             :class_name => "Tag",
             :dependent => :destroy

  has_many   :taggings,
             :dependent => :destroy

  # Indirect associations

  has_many   :teams,
             :through => :capabilities,
             :source => :team

  has_many   :students,
             :through => :taggings,
             :source => :student

  # Validations

end
