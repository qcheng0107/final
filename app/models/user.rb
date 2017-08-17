class User < ApplicationRecord
  # Direct associations

  has_many   :invitations,
             :dependent => :destroy

  has_many   :taggings,
             :dependent => :destroy

  has_many   :registrations,
             :dependent => :destroy

  # Indirect associations

  has_many   :skills,
             :through => :taggings,
             :source => :skill

  has_many   :courses,
             :through => :registrations,
             :source => :course

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
