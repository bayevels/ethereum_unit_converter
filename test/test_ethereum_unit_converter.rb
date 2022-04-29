# frozen_string_literal: true

require "test_helper"


describe EthereumUnitConverter  do
  describe "when version is called" do
    it "should return a value" do
      EthereumUnitConverter::VERSION.wont_be_nil
    end
  end
  describe "when convert is called" do
    it "should convert eth to smaller unit" do
      EthereumUnitConverter.convert(1, 'eth', 'milli').must_equal '1000'
      EthereumUnitConverter.convert(1, 'eth', 'wei').must_equal '1000000000000000000'
      EthereumUnitConverter.convert(1, 'eth', 'tether').must_equal '0.000000000001'
    end

    it "should fail on invalid input et" do
      _{ EthereumUnitConverter.convert(1, 'et', 'milli') }.must_raise StandardError
    end
  end
end
