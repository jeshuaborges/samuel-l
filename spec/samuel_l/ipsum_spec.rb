require 'spec_helper'

describe Samuel::L::Ipsum do
  subject { Samuel::L::Ipsum }

  describe ".paragraph" do
    its(:paragraph) { should be_instance_of(String) }
  end

  describe ".sentence" do
    its(:sentence) { should be_instance_of(String) }
  end
end