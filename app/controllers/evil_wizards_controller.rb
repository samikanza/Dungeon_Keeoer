class EvilWizardsController < ApplicationController
  # GET /evil_wizards
  # GET /evil_wizards.xml
  def index
    @evil_wizards = EvilWizard.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @evil_wizards }
    end
  end

  # GET /evil_wizards/1
  # GET /evil_wizards/1.xml
  def show
    @evil_wizard = EvilWizard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @evil_wizard }
    end
  end

  # GET /evil_wizards/new
  # GET /evil_wizards/new.xml
  def new
    @evil_wizard = EvilWizard.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @evil_wizard }
    end
  end

  # GET /evil_wizards/1/edit
  def edit
    @evil_wizard = EvilWizard.find(params[:id])
  end

  # POST /evil_wizards
  # POST /evil_wizards.xml
  def create
    @evil_wizard = EvilWizard.new(params[:evil_wizard])

    respond_to do |format|
      if @evil_wizard.save
        format.html { redirect_to(@evil_wizard, :notice => 'Evil wizard was successfully created.') }
        format.xml  { render :xml => @evil_wizard, :status => :created, :location => @evil_wizard }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @evil_wizard.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /evil_wizards/1
  # PUT /evil_wizards/1.xml
  def update
    @evil_wizard = EvilWizard.find(params[:id])

    respond_to do |format|
      if @evil_wizard.update_attributes(params[:evil_wizard])
        format.html { redirect_to(@evil_wizard, :notice => 'Evil wizard was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @evil_wizard.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /evil_wizards/1
  # DELETE /evil_wizards/1.xml
  def destroy
    @evil_wizard = EvilWizard.find(params[:id])
    @evil_wizard.destroy

    respond_to do |format|
      format.html { redirect_to(evil_wizards_url) }
      format.xml  { head :ok }
    end
  end
end
