class CLI

    def call
      welcome
      API.get_covid_results
      main
    end

    def welcome 
        puts "Welcome to Covid Stats!"
    end 

    def main
        covid_results
        pick_country
        list_cases 
        list_deaths
    end

    def print_all
        Covid.all.each.with_index(1) { |p, index| puts "#{index}.) #{p.name}.) #{p.description}" }
      end
    
      def user_input
        gets.chomp.downcase
      end
    
      def covid_results
               puts "Would you like to see the list of countries? Y/N"
               input = user_input
            if input == "Yes" || input == "Y"
               print_all
            else
               puts "Goodbye"
            end
         end
    
      def pick_country
            puts "Please select a number:"
        end
    
      def list_cases
                index = user_input.to_i - 1
                last_element = Covid.all.size - 1
             if index.between?(0,last_element)
                system "clear"
                covid = Covid.all[index]
                puts "Name: #{covid.name}"
                puts "Description: #{covid.description}"
                puts "Deaths: #{covid.deaths}"
            else
                puts "Please enter a valid number:"
                list_cases
            end
        end
    
        def path 
                puts "\n\nWould you like to check another country? Y/N"
                input = user_input
            if input == "Yes" || input == "Y"
                print_all
                list_cases
                deaths 
            else
        puts "Good-bye! Stay safe & well!"
        end 
    end
end 