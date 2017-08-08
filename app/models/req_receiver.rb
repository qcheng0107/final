class ReqReceiver < ApplicationRecord
  # Direct associations

  belongs_to :student

  # Indirect associations

  has_one    :req_sender,
             :through => :student,
             :source => :req_senders

  # Validations

end
