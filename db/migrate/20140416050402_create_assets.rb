class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :auid
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
