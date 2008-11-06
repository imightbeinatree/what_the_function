module WhatFunctionsHelper
  def twin_list
    @what_function.twins.collect do |t|
      link_to "(#{t.programming_language.name}) #{t.name}", programming_language_what_function_path(t.programming_language,t)
    end.join('<br />')
  end
end
