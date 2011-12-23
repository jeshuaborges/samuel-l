module Samuel::L
  class Ipsum
    class << self
      def pick(format, count=1)
        opts = Samuel::L.translate :paragraphs
        count.times.map{ opts[rand(opts.size)] }.join(" ")
      end

      def paragraph(count=1)
        pick :paragraphs
      end

      def sentence(count=1)
        pick :sentences
      end
    end
  end
end