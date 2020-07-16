class ApplicationController < ActionController::Base
  def navigationBar
    @navigationBar = [{href: "/", html: "Accueil"}]
    print @navigationBar
  end
end
