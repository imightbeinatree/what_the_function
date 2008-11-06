class ProgrammingLanguagesController < ApplicationController
  # GET /programming_languages
  # GET /programming_languages.xml
  def index
    @programming_languages = ProgrammingLanguage.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @programming_languages }
    end
  end

  # GET /programming_languages/1
  # GET /programming_languages/1.xml
  def show
    @programming_language = ProgrammingLanguage.find_by_name(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @programming_language }
    end
  end

  # GET /programming_languages/new
  # GET /programming_languages/new.xml
  def new
    @programming_language = ProgrammingLanguage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @programming_language }
    end
  end

  # GET /programming_languages/1/edit
  def edit
    @programming_language = ProgrammingLanguage.find(params[:id])
  end

  # POST /programming_languages
  # POST /programming_languages.xml
  def create
    @programming_language = ProgrammingLanguage.new(params[:programming_language])

    respond_to do |format|
      if @programming_language.save
        flash[:notice] = 'ProgrammingLanguage was successfully created.'
        format.html { redirect_to(@programming_language) }
        format.xml  { render :xml => @programming_language, :status => :created, :location => @programming_language }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @programming_language.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /programming_languages/1
  # PUT /programming_languages/1.xml
  def update
    @programming_language = ProgrammingLanguage.find(params[:id])

    respond_to do |format|
      if @programming_language.update_attributes(params[:programming_language])
        flash[:notice] = 'ProgrammingLanguage was successfully updated.'
        format.html { redirect_to(@programming_language) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @programming_language.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /programming_languages/1
  # DELETE /programming_languages/1.xml
  def destroy
    @programming_language = ProgrammingLanguage.find(params[:id])
    @programming_language.destroy

    respond_to do |format|
      format.html { redirect_to(programming_languages_url) }
      format.xml  { head :ok }
    end
  end
end
