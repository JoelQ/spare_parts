require 'sass'

module ApplicationHelper
  def anchor_from_title(title)
    title.downcase.gsub(' ', '_')
  end

  def wrap_css_with_class(css, class_name)
    wrapped_css = ".#{class_name} {#{css}}"
    engine = Sass::Engine.new(wrapped_css, syntax: :scss)
    engine.render
  end
end
