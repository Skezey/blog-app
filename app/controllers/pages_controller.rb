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

  # post request to create the page
  def create
    @page = Page.new(pages_params)

    if @page.save
      redirect_to pages_path
    else
      render :new
    end
  end

  # edit form
  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])

    if @page.update(pages_params)
      redirect_to pages_path
    else
      render :edit
    end
  end

  # delete a page
  def destroy
    Page.find(params[:id]).destroy
    redirect_to pages_path
  end

  private

  def pages_params
    params.require(:page).permit(:title, :author, :body)
  end

end
