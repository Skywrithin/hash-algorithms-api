class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    # / => Output a "Hello World!" Greeting 
    # DSL (Domain Specific Language) => Sinatra
    # Convention Over Configuration 

    get '/' do
        "Hello World"
    end
end
