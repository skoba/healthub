class PeopleController < ApplicationController
  respond_to :html

  def index
    @people = Person.all
    respond_with @people
  end

  def show
    @person = Person.get(params[:id])
    unless @person
      flash[:error] = 'invalid person'
      redirect_to people_url
    end
  end

  def new
    @person = Person.new
    respond_with @person
  end

  def edit
    @person = Person.get(params[:id])
  end

  def create
    @person = Person.new(params[:person])
    if @person.save
      redirect_to @person, :notice => 'Person was successufully created'
    else
      render :action => 'new'
    end
  end

  def update
    @person = Person.get(params[:id])
    if @person.update(params[:person])
      redirect_to(@person, :notice => 'Person was successfully updated')
    else
      render :action => 'edit'
    end
  end

  def destroy
    @person = Person.get(params[:id])
    @person.destroy
    redirect_to people_url
  end
end
