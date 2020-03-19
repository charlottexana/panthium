class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(:id)
    @page.save
  end

  def edit
    @page = Page.find(params[:id])
  end

    # Update show method once booking controller is done.
  def show
    @page = Page.new
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    @page.update(page_params)
  end

    def destroy
      @page = Page.find(params[:id])
      @page.destroy
      redirect_to pages_path
    end


  private

  # def page_params
  #   params.require(:page).permit(:name, :rate, :description)
  # end

end
