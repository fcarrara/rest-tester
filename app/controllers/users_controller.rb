class UsersController < ApplicationController

  def index
    @name = "I'm the Index action!"
  end

  def new
    @name = "I'm the New action!"
  end

  def edit
    @name = "I'm the Edit action!"
  end

  def show
    @name = "I'm the Show action!"
  end

  def create
    @name = "I'm the Create action!"
  end

  def update
    @name = "I'm the Update action!"
  end

  def destroy
    @name = "I'm the Destroy action!"
  end
  
end