class View
  class << self

    def welcome_message
      puts "Welcome to Typekit's Command Line Interface."
    end

    def ask_for_token
      puts "To fetch information about your kits, please enter your API token:"

      input = gets.chomp
    end

    def try_again
      puts "Invalid. Please try again."
      input = gets.chomp
    end

    def display(response)
      puts ""
      puts "-" * 50
      puts "Your Kits"
      puts "-" * 50
      puts "Kit ID    |      Link"
      puts "-" * 50

      # response['kits'].each do |kit|
      #   puts "#{kit['id']}   | #{kit['link']}"
      #   puts "-" * 50
      # end

      puts "Type exit to exit or enter kit ID to view kit"
      gets.chomp
    end

    def get_kit_info(kit_id)
      puts
    end

    def exit
      puts "Thank you for using Typekit's Command Line Interface!"
    end
  end
end


# 327c7603186644398d3f84465d48215b8e343cd0
