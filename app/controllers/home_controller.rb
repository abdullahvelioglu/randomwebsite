class HomeController < ApplicationController
  def index
	@websitesi = Websitesi.all.map(&:adresi).sample
  end
end
