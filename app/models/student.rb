class Student < ApplicationRecord
  # Direct associations

  has_many   :req_receivers,
             :dependent => :destroy

  has_many   :req_senders,
             :dependent => :destroy

  has_many   :registrations,
             :dependent => :destroy

  # Indirect associations

  has_many   :courses,
             :through => :registrations,
             :source => :course

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
