class SitesController < ApplicationController

  def index
    @searchResults = Unirest.get "https://domainr.p.mashape.com/v2/search?mashape-key=DHSHrDj3qwmshytgUHMuTiNr9Kp1p1F4NChjsns0LnhZIjF1Sq&query=#{params[:search]}&registrar=namecheap.com",
      headers:{
        "X-Mashape-Key" => "rZgC4DqgNbmsh9mKxshkDrGd4pdYp1W1pP6jsnopatNptaoljs",
        "Accept" => "application/json"
      }
  end

  def show
    @response = Unirest.get "https://domainr.p.mashape.com/v2/search?mashape-key=DHSHrDj3qwmshytgUHMuTiNr9Kp1p1F4NChjsns0LnhZIjF1Sq&query=#{params[:search]}&registrar=namecheap.com",
      headers:{
        "X-Mashape-Key" => "rZgC4DqgNbmsh9mKxshkDrGd4pdYp1W1pP6jsnopatNptaoljs",
        "Accept" => "application/json"
      }
  end


end
