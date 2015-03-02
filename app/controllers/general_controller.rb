class GeneralController < ApplicationController

  def index
    @spaces = Space.all
    @markers = Gmaps4rails.build_markers(@spaces) do |space, marker|
      marker.lat space.latitude
      marker.lng space.longitude
      marker.title space.name
      marker.infowindow render_to_string(:partial => "markerinfo", :locals => { :space => space})
    end
  end

end
