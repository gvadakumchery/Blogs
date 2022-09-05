class CreateHeadUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :head_users do |t|
      t.string :title
      t.boolean :admin, default: true

      t.timestamps
    end
  end
end
