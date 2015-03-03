class GeneralController < ApplicationController
  respond_to :html, :js

  def index
    @spaces = Space.all
    @markers = Gmaps4rails.build_markers(@spaces) do |space, marker|
      marker.lat space.latitude
      marker.lng space.longitude
      marker.title space.name
      marker.infowindow render_to_string(:partial => "markerinfo", :locals => { :space => space})
    end
  end

  def login_popup
    respond_to do |format|
      format.js
    end
  end

end
