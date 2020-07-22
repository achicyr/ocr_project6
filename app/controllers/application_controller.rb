class ApplicationController < ActionController::Base
  before_action do |c|
    puts "\n\n\n"
    puts c
    puts "\n\n\n"
    @datas = Activity.all
  end
  helper_method [:getActivities]

  def self.navigationBar
    @navigationBar = '[{href: "/", html: "Accueil"}]'
  end
  def getActivities
  end
end
