module ApplicationHelper
  def anchor_from_title(title)
    title.downcase.gsub(' ', '_')
  end
end
