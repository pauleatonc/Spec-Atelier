class RemoveCityFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :city_id, :string
  end
end
