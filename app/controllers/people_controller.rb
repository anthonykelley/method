class PeopleController < ApplicationController
  before_action :get_people , only: [:edit, :show]
  def get_people
    @person = Person.find(params[:id])
  end

  def index
    @people = Person.all
  end

  def show
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to people_path
    else
      render :new
    end
  end

  def update
    @person = Person.find(params[:id])
    if @person.update(person_params)
      redirect_to person_path(@person)
    else
      render :edit
    end    
  end

  def edit
  end

  def destroy
    Person.find(params[:id]).destroy
    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(:name, :age, :hair_color, :eye_color, :gender, :alive)
  end
end
