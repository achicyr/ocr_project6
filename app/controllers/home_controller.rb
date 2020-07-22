class HomeController < ApplicationController

	helper_method [:ll, :my_method]
	def ll
		"lllllllllllllll"
	end
	def index
		@ok = "okok"
	end
  def jumbotron
    render template: "home/jumbotron"
  end
  def navigationBar
    @before = "oijoiu"
  end
  def beforee
		@ppp = "beeeeeeforeeeeeeeeeeeeee"
  end
  def navigationBarr
		@pp = "around_actionouiaround_action"
		yield
  end
	def my_method
	  "reached the top"
	  yield
	  "reached the bottom"
	end

end
