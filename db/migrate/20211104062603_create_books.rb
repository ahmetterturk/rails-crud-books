class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :author
      t.integer :year
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
