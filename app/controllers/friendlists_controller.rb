class FriendlistsController < ApplicationController
  # GET /friendlists
  # GET /friendlists.xml
  def index
    @friendlists = Friendlist.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @friendlists }
    end
  end

  # GET /friendlists/1
  # GET /friendlists/1.xml
  def show
    @friendlist = Friendlist.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @friendlist }
    end
  end

  # GET /friendlists/new
  # GET /friendlists/new.xml
  def new
    @friendlist = Friendlist.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @friendlist }
    end
  end

  # GET /friendlists/1/edit
  def edit
    @friendlist = Friendlist.find(params[:id])
  end

  # POST /friendlists
  # POST /friendlists.xml
  def create
    @friendlist = Friendlist.new(params[:friendlist])

    respond_to do |format|
      if @friendlist.save
        format.html { redirect_to(@friendlist, :notice => 'Friendlist was successfully created.') }
        format.xml  { render :xml => @friendlist, :status => :created, :location => @friendlist }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @friendlist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /friendlists/1
  # PUT /friendlists/1.xml
  def update
    @friendlist = Friendlist.find(params[:id])

    respond_to do |format|
      if @friendlist.update_attributes(params[:friendlist])
        format.html { redirect_to(@friendlist, :notice => 'Friendlist was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @friendlist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /friendlists/1
  # DELETE /friendlists/1.xml
  def destroy
    @friendlist = Friendlist.find(params[:id])
    @friendlist.destroy

    respond_to do |format|
      format.html { redirect_to(friendlists_url) }
      format.xml  { head :ok }
    end
  end
end
