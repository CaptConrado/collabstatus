class ChannelImporter 
  def self.import_channel

		file = "db/channels.csv"

  	CSV.foreach(file, :headers => true, :encoding => 'windows-1251:utf-8') do |row|
      cleaner = row[0].gsub(/^UC/,"")
      Channel.create(
        cuid:             cleaner
      )
    end
  end
end


