require 'spec_helper'

describe Samuel::L::Config do
  subject { Samuel::L::Config }

  describe ".agression=" do
    context "brand spanking new" do
      its(:aggression) { should eql :classic }
    end

    context "with bullshit" do
      it "blows the fuck up" do
        expect{ subject.aggression = :some_shit }.to raise_error(ArgumentError)
      end
    end

    context "when chilln" do
      it "alters my mood" do
        expect{ subject.aggression=:lite }.to change{subject.aggression}.from(:classic).to(:lite)
      end
    end
  end
end