class CreateRubies < ActiveRecord::Migration[5.2]
  def change
    create_table :rubies do |t|
      t.string :title
      t.integer :percent

      t.timestamps
    end
  end
end
