class PageController < ApplicationController
  def welcome
  	@personal = Guest.all
  end
end