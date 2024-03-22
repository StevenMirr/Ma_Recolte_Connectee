class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @exploitations = Exploitation.all
    @markers = @exploitations.geocoded.map do |exploitation|
      {
        lat: exploitation.latitude,
        lng: exploitation.longitude,
        info_window_html: render_to_string(partial: "exploitations/info_window", locals: { exploitation: exploitation }),
        marker_html: render_to_string(partial: "exploitations/marker", locals: { exploitation: exploitation })
      }
    end
  end
end
