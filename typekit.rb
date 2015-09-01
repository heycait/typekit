require 'httparty'

class Typekit
  include HTTParty
  base_uri "https://typekit.com/api/v1/json"

  attr_reader :user_token

  def initialize(user_token)
    @user_token = {:headers => {"X-Typekit-Token" => user_token}}
  end

  def get_kit(kit_id)
    self.class.get("/kits/#{kit_id}", user_token)
  end

  def get_kits
    self.class.get("/kits", user_token)
  end

  def get_font_family(family_id)
    self.class.get("/families/#{family_id}", user_token)
  end
end

# 327c7603186644398d3f84465d48215b8e343cd0
