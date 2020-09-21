class Covid

    attr_accessor :name, :description, :deaths

    @@all = []

    def initialize(name, description, deaths)
      @name = name
      @description = description
      @deaths = deaths
      @@all << self
    end

    def self.all
        @@all
    end

end