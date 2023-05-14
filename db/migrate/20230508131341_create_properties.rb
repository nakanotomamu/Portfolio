class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :area

      t.timestamps
    end
  end
end
