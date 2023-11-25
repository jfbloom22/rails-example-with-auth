class DogsController < ApplicationController
  require 'httparty'
  before_action :require_user, only: [:index]

  def index
    # Make a request to the Dog API to fetch random images of barking dogs
    response = HTTParty.get('https://api.thedogapi.com/v1/images/search?mime_types=jpg&has_barking=1')
    @dog_images = JSON.parse(response.body)
  end
end