class AddpropertyIdTofavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :property_id, :integer
  end
end
