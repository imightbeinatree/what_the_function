class TwinsController < ApplicationController
  
  
  # GET /twins/new
  # GET /twins/new.xml
  def new
    @twin = Twin.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @programming_language }
    end
  end

  # GET /twins/1/edit
  def edit
    @twin = Twin.find(params[:id])
    @function_1 = WhatFunction.find @twin.left_function_id
    @function_2 = WhatFunction.find @twin.right_function_id
    @language_1 = ProgrammingLanguage.find_by_id @function_1.programming_language_id
    @language_2 = ProgrammingLanguage.find_by_id @function_2.programming_language_id
  end

  # POST /twins
  # POST /twins.xml
  def create
    @twin = Twin.new(params[:twin])

    respond_to do |format|
      if @twin.save
        flash[:notice] = 'Twin was successfully created.'
        format.html { redirect_to(edit_twin_path(@twin)) }
        format.xml  { render :xml => @twin, :status => :created, :location => @twin }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @twin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /twins/1
  # PUT /twins/1.xml
  def update
    @twin = Twin.find(params[:id])

    respond_to do |format|
      if @twin.update_attributes(params[:twin])
        flash[:notice] = 'Twin was successfully updated.'
        @function_1 = WhatFunction.find @twin.left_function_id
        @function_2 = WhatFunction.find @twin.right_function_id
        @language_1 = ProgrammingLanguage.find_by_id @function_1.programming_language_id
        @language_2 = ProgrammingLanguage.find_by_id @function_2.programming_language_id
        format.html { redirect_to equiv_path(@language_1.name, @function_1.name,@language_2.name,@function_2.name) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @twin.errors, :status => :unprocessable_entity }
      end
    end
  end

  
end
