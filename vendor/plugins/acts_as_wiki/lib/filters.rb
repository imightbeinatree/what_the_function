module Filters
  def Filters.htmlize_newlines(str)
   (h str).gsub("\n", '<br />').gsub("\r", "")
  end
  
  def Filters.markdown(str)
    f = BlueCloth::new(str)
    f.filter_html = true
    return f.to_html(:markdown)
  end

  def Filters.textile(str)
    f = RedCloth.new(str, [:filter_html])
    return f.to_html
  end
end