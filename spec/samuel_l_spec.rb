require 'spec_helper'

describe Samuel::L do
  describe ".translate" do
    context "with classic fucking agression" do
      before { Samuel::L::Config.aggression = :classic }

      it "You understand me" do
        I18n.should_receive(:translate).with("samuel_l.classic.paragraph")
        Samuel::L.translate :paragraph
      end
    end
  end
end