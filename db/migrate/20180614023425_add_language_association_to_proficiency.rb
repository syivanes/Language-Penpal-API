class AddLanguageAssociationToProficiency < ActiveRecord::Migration[5.2]
  def change
    drop_table :proficiencies 
    
    create_table :proficiencies do |t|
      t.integer :level
      t.belongs_to :user, index: true
      t.belongs_to :language, index: true
      t.timestamps
    end
  end
end
