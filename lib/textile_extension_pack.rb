require 'textile_extension_pack/tags'
require 'textile_extension_pack/regular_expressions'
RedCloth.send(:include, TextileExtensionPack::RegularExpressions)
RedCloth::Formatters::HTML.send(:include, TextileExtensionPack::Tags)