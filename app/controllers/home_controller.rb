class HomeController < ApplicationController

	helper_method [:ll, :my_method]

	def jumbotron
    render template: "home/jumbotron"
  end
  def navigationBar
    @before = "oijoiu"
  end

end
