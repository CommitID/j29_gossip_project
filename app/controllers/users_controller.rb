class UsersController < ApplicationController
  include SessionsHelper
  def index
    @users = User.all
  end

  def show
    @user = current_user
  end

  def new
    @user = User.new
  end

  def create
    #params.permit!
    #user = User.create(user_params)
    #puts "§§§§§§§§§§§§§§§§§"
    #puts user_params
    #puts "§§§§§§§§§§§§§§§§§"
    #redirect_to user_path(user.id)
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email],  city_id: City.all.sample.id, password: params[:password], password_confirmation: params[:password_confirmation])
    @user.city_id = City.all.sample.id
    @user.save

    puts "###########################"
    puts @user.first_name
    puts "###########################"
    redirect_to gossips_path
  end

  def edit
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
  end

  def update
    @user = current_user
    @user.update(user_params)
  end

  def destroy
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :description, :email, :password, :age, :city_id)
  end

end
