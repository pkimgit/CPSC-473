class CrsController < ApplicationController
  # GET /crs
  # GET /crs.xml
  def index
    @crs = Crs.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @crs }
    end
  end

  # GET /crs/1
  # GET /crs/1.xml
  def show
    @cr = Crs.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cr }
    end
  end

  # GET /crs/new
  # GET /crs/new.xml
  def new
    @cr = Crs.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cr }
    end
  end

  # GET /crs/1/edit
  def edit
    @cr = Crs.find(params[:id])
  end

  # POST /crs
  # POST /crs.xml
  def create
    @cr = Crs.new(params[:cr])

    respond_to do |format|
      if @cr.save
        format.html { redirect_to(@cr, :notice => 'Crs was successfully created.') }
        format.xml  { render :xml => @cr, :status => :created, :location => @cr }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cr.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /crs/1
  # PUT /crs/1.xml
  def update
    @cr = Crs.find(params[:id])

    respond_to do |format|
      if @cr.update_attributes(params[:cr])
        format.html { redirect_to(@cr, :notice => 'Crs was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cr.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /crs/1
  # DELETE /crs/1.xml
  def destroy
    @cr = Crs.find(params[:id])
    @cr.destroy

    respond_to do |format|
      format.html { redirect_to(crs_index_url) }
      format.xml  { head :ok }
    end
  end
end
