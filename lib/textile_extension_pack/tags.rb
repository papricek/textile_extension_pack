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

    def video(opts)
      file_name, text, img = opts[:text].split('|').map! { |str| str.strip }
      html = ""
      html << %Q{<div class="video-wrapper #{opts[:class]}">\n}
      html << %Q{<div class="video-wrapper-inner">\n}
      html << %Q{<div class="video-wrapper-inner-inner">\n}
      html << %Q{ <video width="700" height="395" id="player#{file_name}" poster="#{img}" controls="controls" preload="none"> }
      {:mp4 => "mp4", :webm => "webm", :ogg => "ogv"}.each do |format, extension|
        html << %Q{ <source type="video/#{format}" src="/files/videos/#{file_name}.#{extension}"/> }
      end
      html << %Q{ <object width="700" height="395" type="application/x-shockwave-flash" data="/mediaelements/flashmediaelement.swf">
                <param name="movie" value="/mediaelements/flashmediaelement.swf"/>
                <param name="flashvars" value="controls=true&amp;file=/files/videos/#{file_name}.mp4"/>
              </object> }
      html << %Q{  <p>#{text}</p>\n} if text.present?
      html << %Q{</div>\n}
      html << %Q{</div>\n}
      html << %Q{</div>\n}
    end
  end

end
