class Team < ApplicationRecord
  # Direct associations

  belongs_to :session

  has_many   :invitations,
             :dependent => :destroy

  has_many   :capabilities,
             :class_name => "Tag",
             :dependent => :destroy

  # Indirect associations

  has_many   :skills,
             :through => :capabilities,
             :source => :skill

  # Validations

end
