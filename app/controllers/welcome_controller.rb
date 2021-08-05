class WelcomeController < ApplicationController
  include SessionsHelper
  def print
    puts "$" * 60
    puts "Voici le message de l'URL :"
    puts  params[:name]
    @name = params[:name]
    puts "$" * 60
  end
end
