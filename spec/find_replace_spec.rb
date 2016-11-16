require('rspec')
require('./app')
require('capybara/rspec')
require('find_replace')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

# describe('the find and replace path') do
#
# end

describe('String#find_replace') do
  # it ('takes an input and converts it to an array') do
  #   expect('Hello world'.find_replace("cat","dog")).to(eq(['Hello', 'world']))
  # end
  # it ('takes arguments') do
  #   expect('cat'.find_replace("cat","dog")).to(eq("dog"))
  # end
  it ('loops through arrray and finds instances of find_term argument') do
    expect('this is about a cat going to a cathedral'.find_replace("cat","dog")).to(eq("this is about a dog going to a doghedral"))
  end
end
