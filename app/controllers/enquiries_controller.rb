class EnquiriesController < ApplicationController
  def index
    @enquiries = Enquiry.all
  end

  def new
    @enquiry = Enquiry.new
  end

  def create
    @enquiry = Enquiry.new(enquiry_params)
    @enquiry.save
  end
    # Update show method once booking controller is done.
  def show
    @enquiry = Enquiry.new
    @enquiry = Enquiry.find(params[:id])
  end

  def update
    @enquiry = Enquiry.find(params[:id])
    @enquiry.update(page_params)
  end

  private

  def enquiry_params
    params.require(:enquiry).permit(:name, :company_name, :phone_number, :email_address)
  end
end
