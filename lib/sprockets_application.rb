module SprocketsApplication
  def self.routes(map)
    map.resources(:sprockets, :only => [:index, :show])
  end
end
