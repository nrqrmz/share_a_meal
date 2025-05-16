class AddForeignKeyToMeals < ActiveRecord::Migration[7.1]
  def change
    add_reference :meals, :user, foreign_key: true
  end
end
