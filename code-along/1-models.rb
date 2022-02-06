# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
puts Company.all.count
puts "There are now #{Company.all.count} companies."

# 2. create new companies
values = { name: "Apple, Inc", 
           url: "http://apple.com", 
           city: "Cupertinno", 
           state: "CA" }

apple = Company.new(values)
apple.save

values = { name: "Amazon.com, Inc", 
           url: "http://amazon.com", 
           city: "Seattle", 
           state: "WA" }

amazon = Company.new(values)
amazon.save

# 3. query companies table
california_company = Company.where({ state: "CA" })[0]
puts california_company.inspect

# 4. read column values from row
puts california_company.read_attribute(:url)
puts california_company.url

# 5. update attribute value
california_company.slogan = "Think different."
california_company.write_attribute(:slogan, "Think different")
california_company.save

puts california_company.inspect

new_company = Company.new
new_company.name = "Tesla, Inc"
new_company.url = "http://tesla.com"
new_company.city = "Palo Alto"
new_company.state = "CA"
new_company.save

puts new_company.inspect
puts "There are now #{Company.all.count} companies."