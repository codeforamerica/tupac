# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or newd alongside the db with db:setup).
#
# Examples:
#
#   cities = City.new([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.new(name: 'Emanuel', city: cities.first)
unless Rails.env.production?
  @library = Library.new(:github_repo => 'cfahelloworld')
  @library.language_list = 'Ruby'
  @library.save

  @library = Library.new(:github_repo => 'fcc_reboot')
  @library.language_list = 'Ruby'
  @library.save

  @library =Library.new(:github_repo => 'seeclickfix_rb')
  @library.language_list = 'Ruby'
  @library.save

  @library = Library.new(:github_repo => 'FCC-Python-Egg')
  @library.language_list = 'Python'
  @library.save

  @library = Library.new(:github_repo => 'usa_spending_python')
  @library.language_list = 'Python'
  @library.save

  @library = Library.new(:github_repo => 'rxNorm_php')
  @library.language_list = 'PHP'
  @library.save

  @library = Library.new(:github_repo => 'faa_php')
  @library.language_list = 'PHP'
  @library.save

  User.create(:email => "email@test.com", :password => "123456")
end
