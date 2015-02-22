class CreateProductOptions < ActiveRecord::Migration
  def change
    create_table :product_options do |t|
      t.string :black
      t.string :white
      t.string :blue
      t.string :single
      t.string :double
      t.string :queen
      t.string :king

      t.timestamps null: false
    end
  end
end
