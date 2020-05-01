class AddUsericonToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :usericon, :string, null: false, default: "人物アイコン.png"
  end
end