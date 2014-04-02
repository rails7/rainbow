class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :gener
      t.string :description
      t.float :score

      t.timestamps
    end
  end
end
