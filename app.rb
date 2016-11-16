require('./lib/find_replace')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get ('/output') do
  @find_term = params.fetch('find-term')
  @replace_term = params.fetch('replace-term')
  @newString = params.fetch('user-string').find_replace(params.fetch('find-term'), params.fetch('replace-term'))
  erb(:output)
end
