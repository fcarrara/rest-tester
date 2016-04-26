# Rails Rest Tester

Console application that tests all the REST methods in a Rails app.

To run the tests: ruby app/script/rest_requestor.rb

You will be able to play with the GET methods but you'll get an AuthenticaionToken error for Non-GET requests.
This is correct as Rails does not allow any POST request using the command line for security reasons.