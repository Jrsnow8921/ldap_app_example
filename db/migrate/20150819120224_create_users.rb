class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :group_strings
      t.string :name
      t.string :ou_strings
    end
  end
end
