require File.expand_path '../spec_helper', __FILE__
require 'verbose_string'

describe VerboseString do

  describe ".new" do
    context "when called with with a ruby string argument" do
      let(:arg) { "some string" }
      it "initializes successfully" do
        VerboseString.new(arg).must_be_instance_of VerboseString
      end

      it "is a subclass of String" do
        VerboseString.new(arg).is_a?(String).must_equal true
      end
    end

    context "when called with a ruby array argument" do
      let(:arg) { [1, 2, 3] }
      it "raises TypeError" do
        -> {VerboseString.new(arg)}.must_raise TypeError
      end
    end

  end

  describe "#length" do
    subject { VerboseString.new(wrapped_string) }
    let(:wrapped_string) { Faker::Lorem.word }

    it "returns the length of the wrapped string" do
      subject.length.must_equal wrapped_string.length
    end
  end

  describe "#description" do
    subject { VerboseString.new wrapped_string }
    let(:wrapped_string) { Faker::Lorem.word }
    let(:expected_output) { <<-END
String content is: #{wrapped_string}
From Ruby (v1.9.3) - length: #{wrapped_string.length}, encoding: #{wrapped_string.encoding}
From C - ruby 1.9.3p545 (2014-02-24 revision 45159) [x86_64-darwin13.1.0]
END
    }

    it "returns the wrapped string with a description" do
      subject.description.must_equal expected_output
    end
  end

end
