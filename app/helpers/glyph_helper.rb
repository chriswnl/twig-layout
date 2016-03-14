module GlyphHelper
  def glyph(*args)
    glyph_label(:glyphicon, *args)
  end

  private
  def glyph_label(what, value, type = nil)
    klass = [what]
    klass << "#{what}-#{value}" #if type.present?
    content_tag :span, nil, :class => "#{klass.join(' ')}"
  end
end
