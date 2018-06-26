class AddForeignKeyToLogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :logs, :machine, foreign_key: true
  end
end
