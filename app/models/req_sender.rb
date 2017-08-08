class ReqSender < ApplicationRecord
  # Direct associations

  belongs_to :student

  # Indirect associations

  has_one    :req_receiver,
             :through => :student,
             :source => :req_receivers

  # Validations

end
