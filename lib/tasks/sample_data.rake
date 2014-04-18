namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
   file = "db/collab_vine.csv"
   us = User.create!(name: "Conrad O",
                 email: "ottey001@gmail.com",
                 password: "klopmoklopmo",
                 password_confirmation: "klopmoklopmo")


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
    # 99.times do |n|
    #   name  = Faker::Name.name
    #   email = Faker::Internet.email
    #   password  = "password"
    #   User.create!(name: name,
    #                email: email,
    #                password: password,
    #                password_confirmation: password)
    # end
	us.admin!
  end
end
