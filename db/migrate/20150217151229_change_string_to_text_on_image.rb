class ChangeStringToTextOnImage < ActiveRecord::Migration
  def change
  	change_table :products do |t|
      t.change :image, :text
    end
  end
end
