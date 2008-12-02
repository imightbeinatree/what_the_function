module ProgrammingLanguagesHelper
    def function_list
      @programming_language.what_functions.collect do |t|
        link_to t.name, programming_language_what_function_path(t.programming_language,t)
      end.join("</li>\n    <li>")
    end
end
