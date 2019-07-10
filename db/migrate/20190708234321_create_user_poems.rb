class CreateUserPoems < ActiveRecord::Migration[5.2]
  def change
    create_table :user_poems do |t|
      t.references :user, foreign_key: true
      t.references :poem, foreign_key: true

      t.timestamps
    end
  end
end
