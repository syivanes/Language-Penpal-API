class Language < ApplicationRecord
  has_many :proficiencies
  has_many :user_proficiency_levels, class_name: "Proficiency"
                                     foreign_key: "level",
                                     dependent: :destroy

  has_many :users, through: :proficiencies

  def average_language_proficiency
    (user_proficiency_levels.sum.to_f) / (proficiencies.length if proficiencies.length > 0)
  end
end
