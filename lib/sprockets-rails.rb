require "sprockets"

require "sprockets_helper"
require "sprocket"
require "sprockets_application"
require "sprockets_controller"

class ActionController::Base
  helper :sprockets
end
