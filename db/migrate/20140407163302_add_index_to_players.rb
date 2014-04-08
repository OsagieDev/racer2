class AddIndexToPlayers < ActiveRecord::Migration
  def change
    add_index :players, :name, :uniqueness => true
  end
end
