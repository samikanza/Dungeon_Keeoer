class WitchCatsController < ApplicationController
  # GET /witch_cats
  # GET /witch_cats.xml
  def index
    @witch_cats = WitchCat.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @witch_cats }
    end
  end

  # GET /witch_cats/1
  # GET /witch_cats/1.xml
  def show
    @witch_cat = WitchCat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @witch_cat }
    end
  end

  # GET /witch_cats/new
  # GET /witch_cats/new.xml
  def new
    @witch_cat = WitchCat.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @witch_cat }
    end
  end

  # GET /witch_cats/1/edit
  def edit
    @witch_cat = WitchCat.find(params[:id])
  end

  # POST /witch_cats
  # POST /witch_cats.xml
  def create
    @witch_cat = WitchCat.new(params[:witch_cat])

    respond_to do |format|
      if @witch_cat.save
        format.html { redirect_to(@witch_cat, :notice => 'Witch cat was successfully created.') }
        format.xml  { render :xml => @witch_cat, :status => :created, :location => @witch_cat }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @witch_cat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /witch_cats/1
  # PUT /witch_cats/1.xml
  def update
    @witch_cat = WitchCat.find(params[:id])

    respond_to do |format|
      if @witch_cat.update_attributes(params[:witch_cat])
        format.html { redirect_to(@witch_cat, :notice => 'Witch cat was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @witch_cat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /witch_cats/1
  # DELETE /witch_cats/1.xml
  def destroy
    @witch_cat = WitchCat.find(params[:id])
    @witch_cat.destroy

    respond_to do |format|
      format.html { redirect_to(witch_cats_url) }
      format.xml  { head :ok }
    end
  end
end
