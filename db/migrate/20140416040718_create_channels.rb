class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :cuid
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
