class AddutilityformToproperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :utilityfrom, :integer
  end
end
