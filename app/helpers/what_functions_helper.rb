module WhatFunctionsHelper
  def twin_list
    @what_function.twins.collect do |t|
      link_to "(#{t.programming_language.name}) #{t.name}", equiv_path(@what_function.programming_language.name, @what_function.name,t.programming_language.name,t.name)
    end.join('<br />')
  end
end
