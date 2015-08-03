class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]
  def home
    if current_user
      redirect_to people_path
    end
  end

  def dashboard
    @people = current_user.people
  end

  def about
  end

  def test
  end


end
