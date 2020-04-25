class AddRateToMicroposts < ActiveRecord::Migration[6.0]
  def change
    add_column :microposts, :rate, :string
  end
end