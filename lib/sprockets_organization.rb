module SprocketsOrganization
  def routes(map, method = :resource)
    map.send(method, :sprockets)
  end
  
  def sprocket(name)
    Sprocket.new(name)
  end
end
