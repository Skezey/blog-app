class PagesController < ApplicationController
  # view all pages
  def index
    @pages = Page.all
    # renders index.html.erb
  end

  # shows a single object
  def show
    @page = Page.find(params[:id])
    # renders show.html.erb
  end

  # displays form to create new page
  def new
    @page = Page.new
    # renders new.html.erb
  end

  def edit
  end
end
