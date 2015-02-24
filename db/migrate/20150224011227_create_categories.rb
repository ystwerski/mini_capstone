class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :quality

      t.timestamps null: true
    end
  end
end
