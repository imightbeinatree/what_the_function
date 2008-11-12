class RevisionsController < ApplicationController
  def history
    @field_name = params[:title]
    @obj_type = params[:type]
    @revisions = Revision.find_all_by_field_name_and_obj_type_and_obj_id(@field_name, @obj_type, params[:obj_id], :order => 'id DESC')
  end

  def show
    @revision = Revision.find(params[:id])
  end

  def diff
    @revision = Revision.find(params[:old_id])
    if params[:id]
      @current  = Revision.find(params[:id])
    else
      @current = @revision.last_rev
    end
  end
  
  def revert
    @revision = Revision.find(params[:id])
    # load the activeRecord based on class name (type) and obj_id    
    obj = eval("#{@revision.obj_type}.find(#{@revision.obj_id})")
    obj.revert(@revision.field_name, @revision.id, 'Unknown')
    # TODO: is pluralize enough to catch the controller name?
    redirect_to :controller => Inflector::pluralize(@revision.obj_type), :action => 'show', :id => @revision.obj_id
  end
end
