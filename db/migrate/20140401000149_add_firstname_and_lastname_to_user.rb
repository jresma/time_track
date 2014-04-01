class AddFirstnameAndLastnameToUser < ActiveRecord::Migration
  def up
  	add_column :users, :firstname, :string
  	add_column :users, :lastname, :string
  end
end
