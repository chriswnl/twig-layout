module GlyphHelper
  def glyph(*args)
    glyph_label(:glyphicon, *args)
  end

  private
  def glyph_label(what, value, type = nil)
    klass = [what]
    klass << "#{what} #{what}-#{type}" if type.present?
    content_tag :span, value, :class => "#{klass.join(' ')}"
  end
end
