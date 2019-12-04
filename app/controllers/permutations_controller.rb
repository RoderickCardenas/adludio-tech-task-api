class PermutationsController < ApplicationController

  def show
    string = params[:string]
    array = string.split("")
    # ["A", "D", "L", "U", "D", "I", "O"]
    sorted = array.permutation.to_a.sort
    unique_sorted = sorted.uniq
    new_array = unique_sorted.map{|permutation| permutation.join("")}
    
    render json: { indexOfGivenPermutation: new_array.index(string) }

  #   @permutation = Permutation.find_by(name: params[:string].upcase)
  #   if @permutation != nil
  #     render json: { indexOfGivenPermutation: @permutation.id - 1 }
  #   else
  #     render json: { message: "#{params[:string]} is not a permutation of ODIDULA" }
  #   end
  end
end
