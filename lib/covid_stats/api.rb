class API

    BASE_URL = 'https://api.covid19api.com/'
  
    def self.get_covid_results
      response = RestClient.get(BASE_URL)
      json = JSON.parse(response.body)
      binding.pry 
    #   json.each do |covid| 
    #     name = covid["Name"]
    #     description = covid["Description"]
    #     deaths = covid["deaths"]
    #     Covid.new(name, description, deaths)
    #   end
    end
  end