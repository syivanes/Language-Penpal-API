class User < ApplicationRecord
  has_many :proficiencies
  has_many :proficiency_levels, class_name: "Proficiency",
                                foreign_key: "level",
                                dependent: :destroy

  has_many :languages, through: :proficiencies
  
  has_many :sent_messages, class_name: "Message",
                           foreign_key: "sender_id",
                           dependent: :destroy

  has_many :received_messages, class_name: "Message",
                               foreign_key: "recepient_id",
                               dependent: :destroy


end
