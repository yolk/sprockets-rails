class SprocketsController < ActionController::Base
  caches_page :show
  
  def index
    show
  end

  def show
    sprocket = SprocketsApplication.sprocket(params[:id])
    render :text => sprocket.source, :content_type => "text/javascript"
  end
end
