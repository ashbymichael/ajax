class CreateRacoons < ActiveRecord::Migration
  def change
    create_table :racoons do |t|
      t.string :img
    end
  end
end
