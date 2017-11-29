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
  end

  def edit
  end

  def destroy
  end
end
