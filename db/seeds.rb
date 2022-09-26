require 'pry'
puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
freebie1 = Freebie.create(item_name: "Car", value: 2000)
freebie1.company = Company.find_by(name: "Google")
freebie1.dev = Dev.find_by(name: "Rick")
freebie1.save

freebie2 = Freebie.create(item_name: "Ream of Paper", value: 200)
freebie2.company = Company.find_by(name: "Dunder Mifflin")
freebie2.dev = Dev.find_by(name: "Morty")
freebie2.save

freebie3 = Freebie.create(item_name: "Spaceship", value: 2000)
freebie3.company = Company.find_by(name: "Google")
freebie3.dev = Dev.find_by(name: "Morty")
freebie3.save

freebie4 = Freebie.create(item_name: "Shoes", value: 100)
freebie4.company = Company.find_by(name: "Facebook")
freebie4.dev = Dev.find_by(name: "Gazorpazop")
freebie4.save

# binding.pry

puts "Seeding done!"
