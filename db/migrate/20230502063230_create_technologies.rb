class CreateTechnologies < ActiveRecord::Migration[5.2]
  def change
    create_table :technologies do |t|
      t.string :name
      t.references :portfo, foreign_key: true

      t.timestamps
    end
  end
end
