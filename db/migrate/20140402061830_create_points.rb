class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.float :score
      t.integer :candidate_id
      t.references :rateable, polymorphic: true
      t.timestamps
    end
  end
end
