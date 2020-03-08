class EnquiriesController < ApplicationController
  def index
    @enquiries = Enquiry.all
  end
end
