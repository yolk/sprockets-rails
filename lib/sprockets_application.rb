module SprocketsApplication
  def routes(map)
    map.resources(:sprockets, :only => [:index, :show])
  end
end
