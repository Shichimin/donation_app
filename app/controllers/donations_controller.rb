class DonationsController < ApplicationController
  def index
  end

  def new
    @donation = UserDonation.new
  end

  def create
    @donation = UserDnation.new(donation_params)
    @donation.save
  end

  private

  def donation_params
    params.require(:user).permit(:name, :name_reading, :nickname, :prefecture, :city, :house_number, :building_name, :price)
  end
end
