require_relative "covid_stats/version"

# module CovidStats
#   class Error < StandardError; end
#   # Your code goes here...
# end

require 'bundler/setup'
Bundler.require(:default)

require_relative "./covid_stats/api.rb"
require_relative "./covid_stats/cli.rb"
require_relative "./covid_stats/covid.rb"