# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
unless Rails.env.production?
  Library.create(:github_repo => 'cfahelloworld')
  Library.create(:github_repo => 'fcc_reboot')
  Library.create(:github_repo => 'seeclickfix_rb')
  Library.create(:github_repo => 'FCC-Python-Egg')
  Library.create(:github_repo => 'usa_spending_python')
  Library.create(:github_repo => 'rxNorm_php')
  Library.create(:github_repo => 'faa_php')
end
