# GOOD PRACTICE -- DELETE OLD DATA FIRST
puts "Removing old data..."
Company.delete_all
Dev.delete_all
Freebie.delete_all

puts "Creating companies..."
c1 = Company.create(name: "Google", founding_year: 1998)
c2 = Company.create(name: "Facebook", founding_year: 2004)
c3 = Company.create(name: "Dunder Mifflin", founding_year: 2002)
c4 = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
d1 = Dev.create(name: "Rick")
d2 = Dev.create(name: "Morty")
d3 = Dev.create(name: "Mr. Meseeks")
d4 = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
f1 = Freebie.create(item_name: "Shirt", value: 20, company_id: c1.id, dev_id: d1.id)
f2 = Freebie.create(item_name: "Mug", value: 5, company_id: c2.id, dev_id: d2.id)
f3 = Freebie.create(item_name: "Book", value: 10, company_id: c1.id, dev_id: d2.id)
f4 = Freebie.create(item_name: "Headphones", value: 50, company_id: c3.id, dev_id: d3.id)
f5 = Freebie.create(item_name: "Pen", value: 3, company_id: c1.id, dev_id: d1.id)

puts "Seeding done!"
