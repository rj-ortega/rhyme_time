class CreateUserHaikus < ActiveRecord::Migration[5.2]
  def change
    create_table :user_haikus do |t|
      t.references :user, foreign_key: true
      t.references :haiku, foreign_key: true

      t.timestamps
    end
  end
end
