module TextileExtensionPack
  module Tags

    def icon(opts)
      img, text, url = opts[:text].split('|').map! { |str| str.strip }
      html = %Q{<figure>\n}
      html << %Q{<div class="image-wrapper #{opts[:class]}">\n}
      html << %Q{<div class="image-wrapper-inner">\n}
      html << %Q{<div class="image-wrapper-inner-inner">\n}
      html << %Q{  <a href="#{url}" title="#{text}">} if url.present?
      html << %Q{    <img src="#{img}" alt="#{text}" />}
      html << %Q{  </a>\n} if url.present?
      html << %Q{</div>\n}
      html << %Q{</div>\n}
      html << %Q{</div>\n}
      html << %Q{  <figcaption>#{text}</figcaption>\n} if text.present?
      html << %Q{</figure>\n}
    end
  end

end
