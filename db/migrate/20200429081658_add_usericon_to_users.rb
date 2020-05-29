class AddUsericonToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :usericon, :string, null: false, default: "defaulticon.png"
  end
end