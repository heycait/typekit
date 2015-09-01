require_relative 'typekit'
require_relative 'view'

class Controller

  def self.run
    View.welcome_message

    user_token = View.ask_for_token
    typekit = Typekit.new(user_token)
    kits = typekit.get_kits['kits']
    puts result = View.display(kits)

    if View.display(kits) == 'exit'
      break
    elsif View.display(kits)
    else


    # kits.each do |kit|
    #   puts typekit.get_kit(kit['id'])
    # end
  end
end


Controller.run

# 327c7603186644398d3f84465d48215b8e343cd0
