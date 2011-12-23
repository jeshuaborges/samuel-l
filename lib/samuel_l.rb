require 'i18n'

mydir = File.expand_path(File.dirname(__FILE__))

I18n.load_path += Dir[File.join(mydir, 'locales', '*.yml')]
I18n.reload!

module Samuel
  module L
    class << self
      def translate(format)
        # TODO: validate format
        I18n.translate ["samuel_l", Config.aggression, format].map(&:to_s).join('.')
      end
    end
  end
end

require 'samuel_l/config'
require 'samuel_l/ipsum'