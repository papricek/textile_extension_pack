module TextileExtensionPack

  module RegularExpressions
    def tags(text)
      text.gsub!(/cleaner./, '<hr class="cleaner" />')
      text.gsub!(/columnstart./, '<div class="column">')
      text.gsub!(/columnend./, '</div>')
      text.gsub!(/decolumnize./, '</div>')
      text.gsub!(/columnize./, '<div class="columnized">')
    end
  end

end
