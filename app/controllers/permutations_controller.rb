class PermutationsController < ApplicationController

  def show
    @permutation = Permutation.find_by(name: params[:string].upcase)
    if @permutation != nil
      render json: { indexOfGivenPermutation: @permutation.id - 1 }
    else
      render json: { message: "#{params[:string]} is not a permutation of ODIDULA" }
    end
  end
end
