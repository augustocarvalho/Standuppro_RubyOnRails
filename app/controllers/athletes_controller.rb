class AthletesController < InheritedResources::Base

  private

    def athlete_params
      params.require(:athlete).permit(:name, :dob, :email, :estado, :cidade)
    end
end

