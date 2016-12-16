class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :img
    end
  end
end
