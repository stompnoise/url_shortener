module Api
  module V1

    class LinksApiController < BaseApiController

      respond_to :json

      def get_url
        
        Rails.logger.info(params)
        link = Link.find_by_url params[:url]
        if(link)
          result = {
            :url => link.shortened_url
          }
          render json: result
        else
          render json: {:url => ""}
        end
        
      end
      
      def get_stats
        
        visits = Visit.find_by landing_page: params[:url]
        Rails.logger.info(visits.inspect)
        if(visits)
          render json: visits
        else
          render json: {}
        end     
        
      end
     
    end
  end
end