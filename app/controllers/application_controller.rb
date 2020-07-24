class ApplicationController < ActionController::Base
  before_action do |c|
    puts "\n\n\n"
    puts c
    puts "\n\n\n"
    @datas = Activity.all
    @contents = getContents Content.all
  end
  helper_method [:getActivities]

  def self.navigationBar
    @navigationBar = '[{href: "/", html: "Accueil"}]'
  end
  def getContents arr
    h = {}
    arr.each do |x|
      if !h[x.component_type].respond_to?(:size)
        h[x.component_type] = []
      end
      h[x.component_type] << x
    end
    puts h
    return h
  end
end
