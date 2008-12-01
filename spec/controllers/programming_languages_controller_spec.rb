require File.dirname(__FILE__) + '/../spec_helper'

describe ProgrammingLanguagesController do
  before(:each) do
    @programming_language = mock_model(ProgrammingLanguage)
    @programming_language.stub!(:new_record?).and_return(false)
    @programming_language.stub!(:new).and_return(@programming_language)
  end
  
  describe "handling INDEX" do
    it "should render /programming_languages on GET to index" do
      get 'index'
      response.should render_template(:index)
    end
  end
  
  describe "handling SHOW /programming_languages/PHP" do
    before(:each) do
      @programming_language = mock_model(ProgrammingLanguage, {:name => "PHP"} )
      @programming_language.stub!(:find).and_return @programming_language
    end
    
    it "should get programming_language with id => PHP from model" do
        @programming_language.should_receive(:find).and_return(@programming_language)
        get 'show', :id => "PHP"
        assigns[:programming_language].should equal(@programming_language)
    end
    
    
    
  end
  
  describe "handling CREATE /programming_languages" do
    it "should create a new, unsaved programming_language on GET to create" do
      @programming_language.should_receive(:new).and_return(@programming_language)
      @programming_language.name = "PHP"
      get 'create'
    end

    it "should assign new programming_language to template on GET to create" do
      @programming_language.name = "PHP"      
      get 'create'
      assigns[:programming_language].should equal(@programming_language)
    end

    it "should render 'programming_languages/new' on GET to new" do
      get 'new'
      response.should render_template(:new)
    end

    it "should tell the ProgrammingLanguage model to create a new programming_language on POST to create" do
      ProgrammingLanguage.should_receive(:create).with({"name" => 'Aslak'}).and_return(@programming_language)

      post 'create', {:programming_language => {:name => 'Aslak'}}
    end

    it "with a valid programming_language should redirect to index on successful POST to create" do
      @programming_language.should_receive(:new_record?).and_return(false)
      ProgrammingLanguage.should_receive(:create).with({"name" => 'Aslak'}).and_return(@programming_language)

      post 'create', {:programming_language => {:name => 'Aslak'}}

      response.should redirect_to(:action => 'index')
    end

    it "with a valid programming_language should re-render 'programming_languages/create' on failed POST to create" do
      @programming_language.should_receive(:new_record?).and_return(true)
      ProgrammingLanguage.should_receive(:create).with({"name" => 'Aslak'}).and_return(@programming_language)

      post 'create', {:ProgrammingLanguage => {:name => 'Aslak'}}

      response.should render_template("programming_languages/create")
      response.should_not be_redirect
      assigns[:programming_language].should == ProgrammingLanguage.new({:name => 'Aslak'})
    end
  end


  describe "handling DELETE /programming_languages/1" do
    before(:each) do
      @programming_language = mock_model(ProgrammingLanguage, :destroy => true)
      @programming_language.stub!(:find).and_return(@programming_language)
    end

    def do_delete
      delete :destroy, :id => "PHP"
    end

    it "should find programming_language requested" do
      @programming_language.should_receive(:find).with("1").and_return(@programming_language)
      do_delete
    end

    it "should call destroy on the programming_language found" do
      @programming_language.should_receive(:destroy)
      do_delete
    end

    it "should redirect to the programming_languages list" do
      delete :destroy, :id => "PHP"
      response.should redirect_to(programming_languages_url)
    end
  end  

end


