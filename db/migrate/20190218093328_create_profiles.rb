class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.text :introduction
      t.references :user, foreign_key: true
      t.integer :sex

      t.timestamps
    end
  end
end
