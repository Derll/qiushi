class PageController < ApplicationController
  def welcome
  	@personal = Guest.all.reverse
  end
end