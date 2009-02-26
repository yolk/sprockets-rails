class SprocketsController < ActionController::Base
  caches_page :show
  
  def index
    show
  end

  def show
    source = ''
    if params[:id]
      sprocket = SprocketsApplication.sprocket(params[:id])
      if sprocket
        source = sprocket.source
      end
    else
      source = SprocketsApplication.source
    end
    render :text => source, :content_type => "text/javascript"
  end
end
