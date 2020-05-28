class SuburbDetailsController < ApplicationController
	before_action :authenticate_user!

	def get_near_by_pincodes
		suburb = Suburb.new(suburb_params)

    if suburb.save
      render json: suburb, status: :created
    else
      render json: suburb.errors, status: :unprocessable_entity
    end
	end

	def get_subrub
		suburb = Suburb.near(params[:pincode], params[:radius], :order => :distance)
		if suburb.present?
			render :json => suburb, each_serializer: SubrubSerializer
    else
      render json: suburb,msg: "No Records"
    end
	end

	private

	def suburb_params
      params.require(:suburb).permit(:address,:pincode, :latitude, :longitude)
    end
end
