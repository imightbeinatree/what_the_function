class WhatFunctionsController < ApplicationController
  before_filter :grab_programming_language
  
  def grab_programming_language
    @programming_language = ProgrammingLanguage.find_by_name params[:programming_language_id]
  end
  
  # GET /what_functions
  # GET /what_functions.xml
  def index
    @what_functions = @programming_language.what_functions

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @what_functions }
    end
  end

  # GET /what_functions/1
  # GET /what_functions/1.xml
  def show
    @what_function = @programming_language.what_functions.find_by_name(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @what_function }
    end
  end

  # GET /what_functions/new
  # GET /what_functions/new.xml
  def new
    @what_function = WhatFunction.new
    @programming_languages = ProgrammingLanguage.find(:all)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @what_function }
    end
  end

  # GET /what_functions/1/edit
  def edit
    @what_function = WhatFunction.find(params[:id])
    @programming_languages = ProgrammingLanguage.find(:all)
  end

  # POST /what_functions
  # POST /what_functions.xml
  def create
    @what_function = WhatFunction.new(params[:what_function])

    respond_to do |format|
      if @what_function.save
        flash[:notice] = 'WhatFunction was successfully created.'
        format.html { redirect_to(@what_function) }
        format.xml  { render :xml => @what_function, :status => :created, :location => @what_function }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @what_function.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /what_functions/1
  # PUT /what_functions/1.xml
  def update
    @what_function = WhatFunction.find(params[:id])

    respond_to do |format|
      if @what_function.update_attributes(params[:what_function])
        flash[:notice] = 'WhatFunction was successfully updated.'
        format.html { redirect_to(@what_function) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @what_function.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /what_functions/1
  # DELETE /what_functions/1.xml
  def destroy
    @what_function = WhatFunction.find(params[:id])
    @what_function.destroy

    respond_to do |format|
      format.html { redirect_to(what_functions_url) }
      format.xml  { head :ok }
    end
  end
end
