class PagesController < InheritedResources::Base
  before_action :set_page, only: %i[show edit update destroy]
  before_action :set_page, only: %i[show edit update destroy]

  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
  end

  def permalink
    @page = Page.find_by(permalink: params[:permalink])
  end

  # GET /pages/new
  def new
    @page = Page.new
  end

  # GET /pages/1/edit
  def edit; end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to pages_path, notice: 'Page was successfully created.' }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end
end
