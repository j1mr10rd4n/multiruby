require File.expand_path '../spec_helper', __FILE__
require 'verbose_string'

describe VerboseString do

  describe ".new" do
    context "when called with with a ruby string argument" do
      let(:arg) { "some string" }
      it "initializes successfully" do
        VerboseString.new(arg).must_be_instance_of VerboseString
      end
    end

    context "when called with a ruby array argument" do
      let(:arg) { [1, 2, 3] }
      it "raises ArgumentError" do
        -> {VerboseString.new(arg)}.must_raise ArgumentError
      end
    end

  end

end
