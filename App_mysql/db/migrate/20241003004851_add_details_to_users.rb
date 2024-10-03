class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :programador, :boolean
    add_column :users, :birthday, :date
    add_column :users, :work_time, :time
  end
end
