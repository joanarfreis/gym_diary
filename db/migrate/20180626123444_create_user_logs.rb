class CreateUserLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_logs do |t|
      t.date :date
      t.time :time
      t.references :user, foreign_key:true
      t.references :log, foreign_key:true      
      t.timestamps
    end
  end
end
