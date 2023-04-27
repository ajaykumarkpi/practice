class AddMatchReferenceToRubies < ActiveRecord::Migration[5.2]
  def change
    add_reference :rubies, :match, foreign_key: true
  end
end
