class ApplicationController < ActionController::Base
  before_action do |c|
    puts "\n\n\n"
    @datas = Activity.all
    @contents = getContents Content.all
  end
  helper_method [:getActivities, :mytest]
  def getContents arr
    h = {}
    arr.each do |x|
      h[x.component_type] = [] if !h[x.component_type].respond_to?(:size)
      h[x.component_type] << x
    end
    return h
  end
end
