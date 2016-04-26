require 'rest-client'

#     Prefix Verb   URI Pattern            Controller#Action
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy

class RestTester

  def initialize
    @url = "http://localhost:3000/users"
  end

  # GET methods

  def test_index
    RestClient.get(@url)
  end

  def test_show
    RestClient.get(@url + "/1")
  end

  def test_new
    RestClient.get(@url + "/new")
  end

  def test_edit
    RestClient.get(@url + "/1/edit")
  end

  # POST method

  def test_create
    RestClient.post(@url,"")
  end

  # PUT method

  def test_update
    RestClient.put(@url + "/1", "")
  end

  # DELETE method

  def test_destroy
    RestClient.delete(@url + "/1")
  end
end


rest_tester = RestTester.new
puts "\nPlease select the REST action to be tested: \n\n"
puts "      1. GET users     => users#index"
puts "      2. GET user      => users#show"
puts "      3. GET new_user  => users#new"
puts "      4. GET edit_user => users#edit"
puts "      5. POST user     => users#create"
puts "      6. PUT user      => users#update"
puts "      7. DELETE user   => users#destroy\n\n"

option = gets.chomp
case option
when "1" then puts rest_tester.test_index
when "2" then puts rest_tester.test_show
when "3" then puts rest_tester.test_new
when "4" then puts rest_tester.test_edit
when "5" then puts rest_tester.test_create
when "6" then puts rest_tester.test_update
when "7" then puts rest_tester.test_destroy
end