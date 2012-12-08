class MedrecordsController < ApplicationController
  # GET /medrecords
  # GET /medrecords.json
  def index
    @medrecords = Medrecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @medrecords }
    end
  end

  # GET /medrecords/1
  # GET /medrecords/1.json
  def show
    @medrecord = Medrecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @medrecord }
    end
  end

  # GET /medrecords/new
  # GET /medrecords/new.json
  def new
    @medrecord = Medrecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @medrecord }
    end
  end

  # GET /medrecords/1/edit
  def edit
    @medrecord = Medrecord.find(params[:id])
  end

  # POST /medrecords
  # POST /medrecords.json
  def create
    @medrecord = Medrecord.new(params[:medrecord])

    respond_to do |format|
      if @medrecord.save
        format.html { redirect_to @medrecord, notice: 'Medrecord was successfully created.' }
        format.json { render json: @medrecord, status: :created, location: @medrecord }
      else
        format.html { render action: "new" }
        format.json { render json: @medrecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /medrecords/1
  # PUT /medrecords/1.json
  def update
    @medrecord = Medrecord.find(params[:id])

    respond_to do |format|
      if @medrecord.update_attributes(params[:medrecord])
        format.html { redirect_to @medrecord, notice: 'Medrecord was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @medrecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medrecords/1
  # DELETE /medrecords/1.json
  def destroy
    @medrecord = Medrecord.find(params[:id])
    @medrecord.destroy

    respond_to do |format|
      format.html { redirect_to medrecords_url }
      format.json { head :no_content }
    end
  end
end
