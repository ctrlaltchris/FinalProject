class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.text :option1
      t.text :option2
      t.text :option3
      t.text :option3
      t.text :option4

      t.timestamps null: false
    end
  end
end
