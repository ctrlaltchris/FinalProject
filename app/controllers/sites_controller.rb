class SitesController < ApplicationController

  # def index
  #   @searchResults = Unirest.get "https://domainr.p.mashape.com/v2/search?mashape-key=DHSHrDj3qwmshytgUHMuTiNr9Kp1p1F4NChjsns0LnhZIjF1Sq&query=#{params[:search]}&registrar=namecheap.com",
  #     headers:{
  #       "X-Mashape-Key" => "rZgC4DqgNbmsh9mKxshkDrGd4pdYp1W1pP6jsnopatNptaoljs",
  #       "Accept" => "application/json"
  #     }
  #     binding.pry
  # end

  def order
    @response = Unirest.get "https://domainr.p.mashape.com/v2/search?mashape-key=DHSHrDj3qwmshytgUHMuTiNr9Kp1p1F4NChjsns0LnhZIjF1Sq&query=#{params[:search]}&registrar=namecheap.com",
      headers:{
        "X-Mashape-Key" => "rZgC4DqgNbmsh9mKxshkDrGd4pdYp1W1pP6jsnopatNptaoljs",
        "Accept" => "application/json"
      }
      # binding.pry
      @answer = []

      @response.body["results"].each {|res| puts @answer.push(res["domain"])}

      # binding.pry
  end

    def api
      @response = Unirest.get "https://domainr.p.mashape.com/v2/search?mashape-key=DHSHrDj3qwmshytgUHMuTiNr9Kp1p1F4NChjsns0LnhZIjF1Sq&query=#{params[:search]}&registrar=namecheap.com",
        headers:{
          "X-Mashape-Key" => "rZgC4DqgNbmsh9mKxshkDrGd4pdYp1W1pP6jsnopatNptaoljs",
          "Accept" => "application/json"
        }
        # binding.pry
        @answer = []

        @response.body["results"].each {|res| puts @answer.push(res["domain"])}

        # binding.pry

    end

    def index
    end

  #
  # def create
  #   @response = Unirest.get "https://domainr.p.mashape.com/v2/search?mashape-key=DHSHrDj3qwmshytgUHMuTiNr9Kp1p1F4NChjsns0LnhZIjF1Sq&query=#{params[:search]}&registrar=namecheap.com",
  #     headers:{
  #       "X-Mashape-Key" => "rZgC4DqgNbmsh9mKxshkDrGd4pdYp1W1pP6jsnopatNptaoljs",
  #       "Accept" => "application/json"
  #     }
  #
  #   # domain = Domain.new
  #   # domain.domain = @response['domain']
  #   # domain.user_id = current_user
  #   #
  #
  #   if venue.save
  #     flash[:message] = "Domain Selected"
  #     redirect_to '/result'
  #   end
  # end

end
