class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :vuid
      t.belongs_to :channel, index: true

      t.timestamps
    end
  end
end
