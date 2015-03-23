require 'spec_helper'
require_relative '../number.rb'

describe Number do
  describe 'bin2dec' do
    it 'converts binary to decimal' do
      expect(Number.bin2dec('1101')).to eq 13
    end

    # Add another example.
  end

  describe 'dec2bin' do
    it 'converts decimal to binary' do
      pending
      expect(Number.dec2bin(13)).to eq '1101'
    end
  end

  describe 'bin2hex' do
    it 'converts binary to hexadecimal' do
      pending
      expect(Number.bin2hex('1110111110011')).to eq '1df3'
    end
  end

  describe 'hex2bin' do
    pending
  end
end
