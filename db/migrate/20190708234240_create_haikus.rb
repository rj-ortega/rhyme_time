class CreateHaikus < ActiveRecord::Migration[5.2]
  def change
    create_table :haikus do |t|
      t.text :poem

      t.timestamps
    end
  end
end
