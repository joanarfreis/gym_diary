class CreateMachines < ActiveRecord::Migration[5.2]
  def change
    create_table :machines do |t|
      t.string :name
      t.string :picture
      t.string :description
      t.timestamps
    end
  end
end
