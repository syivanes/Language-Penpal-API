class CreateProficiencies < ActiveRecord::Migration[5.2]
  def change
    create_table :proficiencies do |t|
      t.integer :level
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
