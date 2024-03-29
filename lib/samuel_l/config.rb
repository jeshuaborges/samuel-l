module Samuel::L
  class Config
    @locale = nil

    class << self
      attr_writer :locale

      def locale
        @locale || I18n.locale
      end

      def aggression
        @aggression || :classic
      end

      def aggression=(val)
        unless [:classic, :lite].include? val
          raise ArgumentError, "#{val} is not valid motherfucker!"
        end

        @aggression = val
      end
    end
  end
end