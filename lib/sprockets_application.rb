module SprocketsApplication
  def routes(map)
    map.resources(:sprockets, :only => [:index, :show])
  end
  
  def sprocket(name=nil)
    Sprocket.new(name)
  end
end
