class Channel < ActiveRecord::Base
  belongs_to :user
  has_many   :videos




  def self.import(file)
    CSV.foreach(file.path, :headers => true, :encoding => 'utf-8') do |row|
      cleaner = row[0].gsub(/^UC/,"")
      Channel.create(
        auid:             cleaner
      )
    end
    # dedupe
  end
end
