module Samuel::L
  class Ipsum
    class << self
      def paragraph 
        opts = Samuel::L.translate :paragraphs
        opts[rand(opts.size)]
      end
    end
  end
end