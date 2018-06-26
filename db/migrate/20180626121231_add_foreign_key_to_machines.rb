class AddForeignKeyToMachines < ActiveRecord::Migration[5.2]
  def change
    add_reference :machines, :machine_category, foreign_key: true
  end
end
