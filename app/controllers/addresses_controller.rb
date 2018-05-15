class AddressesController < ApplicationController

  def new
    @address = Address.new
    # @student = Student.find(params[:id])
    # @address = @student.create(address_params)
  end

  private
  def address_params
    params.require(:address).permit(:description, :street, :city, :state, :zip_code,)
  end
end
