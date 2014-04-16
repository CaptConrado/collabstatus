class ChannelImporter 
  def self.import_channel

		file = "db/producers.csv"

  	CSV.foreach(file, :headers => true, :encoding => 'windows-1251:utf-8') do |row|
      Producer.create(
        first_name:            row[1]
        # collab:          row[3]
      )
    end
  end
end



