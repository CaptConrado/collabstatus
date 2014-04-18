class VineImporter 
  def self.import_talent

		file = "db/collab_vine.csv"

  	CSV.foreach(file, :headers => true, :encoding => 'windows-1251:utf-8') do |row|
      # cleaner = row[0].gsub(/^UC/,"")
      email = Faker::Internet.email
      password  = "password"
      User.create!(
        name:  row[0],
        email: email,
        password: password,
        password_confirmation: password
      )
    end
  end
end


