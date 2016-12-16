class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :img
    end
  end
end
