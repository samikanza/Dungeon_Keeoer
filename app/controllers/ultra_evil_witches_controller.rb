class UltraEvilWitchesController < ApplicationController
  # GET /ultra_evil_witches
  # GET /ultra_evil_witches.xml
  def index
    @ultra_evil_witches = UltraEvilWitch.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ultra_evil_witches }
    end
  end

  # GET /ultra_evil_witches/1
  # GET /ultra_evil_witches/1.xml
  def show
    @ultra_evil_witch = UltraEvilWitch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ultra_evil_witch }
    end
  end

  # GET /ultra_evil_witches/new
  # GET /ultra_evil_witches/new.xml
  def new
    @ultra_evil_witch = UltraEvilWitch.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ultra_evil_witch }
    end
  end

  # GET /ultra_evil_witches/1/edit
  def edit
    @ultra_evil_witch = UltraEvilWitch.find(params[:id])
  end

  # POST /ultra_evil_witches
  # POST /ultra_evil_witches.xml
  def create
    @ultra_evil_witch = UltraEvilWitch.new(params[:ultra_evil_witch])

    respond_to do |format|
      if @ultra_evil_witch.save
        format.html { redirect_to(@ultra_evil_witch, :notice => 'Ultra evil witch was successfully created.') }
        format.xml  { render :xml => @ultra_evil_witch, :status => :created, :location => @ultra_evil_witch }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ultra_evil_witch.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ultra_evil_witches/1
  # PUT /ultra_evil_witches/1.xml
  def update
    @ultra_evil_witch = UltraEvilWitch.find(params[:id])

    respond_to do |format|
      if @ultra_evil_witch.update_attributes(params[:ultra_evil_witch])
        format.html { redirect_to(@ultra_evil_witch, :notice => 'Ultra evil witch was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ultra_evil_witch.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ultra_evil_witches/1
  # DELETE /ultra_evil_witches/1.xml
  def destroy
    @ultra_evil_witch = UltraEvilWitch.find(params[:id])
    @ultra_evil_witch.destroy

    respond_to do |format|
      format.html { redirect_to(ultra_evil_witches_url) }
      format.xml  { head :ok }
    end
  end
end
