class ConcoursesController < ApplicationController
  # GET /concourses
  # GET /concourses.json
  def index
    @concourses = Concourse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @concourses }
    end
  end

  # GET /concourses/1
  # GET /concourses/1.json
  def show
    @concourse = Concourse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @concourse }
    end
  end

  # GET /concourses/new
  # GET /concourses/new.json
  def new
    @concourse = Concourse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @concourse }
    end
  end

  # GET /concourses/1/edit
  def edit
    @concourse = Concourse.find(params[:id])
  end

  # POST /concourses
  # POST /concourses.json
  def create
    @concourse = Concourse.new(params[:concourse])

    respond_to do |format|
      if @concourse.save
        format.html { redirect_to @concourse, notice: 'Concourse was successfully created.' }
        format.json { render json: @concourse, status: :created, location: @concourse }
      else
        format.html { render action: "new" }
        format.json { render json: @concourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /concourses/1
  # PUT /concourses/1.json
  def update
    @concourse = Concourse.find(params[:id])

    respond_to do |format|
      if @concourse.update_attributes(params[:concourse])
        format.html { redirect_to @concourse, notice: 'Concourse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @concourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /concourses/1
  # DELETE /concourses/1.json
  def destroy
    @concourse = Concourse.find(params[:id])
    @concourse.destroy

    respond_to do |format|
      format.html { redirect_to concourses_url }
      format.json { head :no_content }
    end
  end
end
