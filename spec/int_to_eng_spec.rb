# frozen_string_literal: true

require 'rspec'
require_relative 'spec_helper'
require_relative '../lib/int_to_eng'

describe 'expect int_to_eng' do
  describe 'when given a string' do
    it 'returns nil' do
      expect(int_to_eng('string')).to eq nil
    end
  end

  describe 'when given a float' do
    it 'returns nil' do
      expect(int_to_eng(1.1)).to eq nil
    end
  end

  describe 'when given a negative number' do
    it 'returns nil' do
      expect(int_to_eng(-1)).to eq nil
    end
  end

  describe 'when given 0 to 19' do
    it 'returns numbers in letters from 0 to 19' do
      expect(int_to_eng(0)).to eq  'zero'
      expect(int_to_eng(1)).to eq  'one'
      expect(int_to_eng(2)).to eq  'two'
      expect(int_to_eng(3)).to eq  'three'
      expect(int_to_eng(4)).to eq  'four'
      expect(int_to_eng(5)).to eq  'five'
      expect(int_to_eng(6)).to eq  'six'
      expect(int_to_eng(7)).to eq  'seven'
      expect(int_to_eng(8)).to eq  'eight'
      expect(int_to_eng(9)).to eq  'nine'
      expect(int_to_eng(10)).to eq  'ten'
      expect(int_to_eng(11)).to eq  'eleven'
      expect(int_to_eng(12)).to eq  'twelve'
      expect(int_to_eng(13)).to eq  'thirteen'
      expect(int_to_eng(14)).to eq  'fourteen'
      expect(int_to_eng(15)).to eq  'fifteen'
      expect(int_to_eng(16)).to eq  'sixteen'
      expect(int_to_eng(17)).to eq  'seventeen'
      expect(int_to_eng(18)).to eq  'eighteen'
      expect(int_to_eng(19)).to eq  'nineteen'
    end
  end

  describe 'when given multiply of 10' do
    it 'returns numbers in letters from 20 to 90' do
      expect(int_to_eng(20)).to eq  'twenty'
      expect(int_to_eng(30)).to eq  'thirty'
      expect(int_to_eng(40)).to eq  'forty'
      expect(int_to_eng(50)).to eq  'fifty'
      expect(int_to_eng(60)).to eq  'sixty'
      expect(int_to_eng(70)).to eq  'seventy'
      expect(int_to_eng(80)).to eq  'eighty'
      expect(int_to_eng(90)).to eq  'ninety'
    end
  end

  describe 'when given numbers between 20 and 99' do
    it 'returns numbers in letters' do
      expect(int_to_eng(21)).to eq  'twenty-one'
      expect(int_to_eng(32)).to eq  'thirty-two'
      expect(int_to_eng(43)).to eq  'forty-three'
      expect(int_to_eng(54)).to eq  'fifty-four'
      expect(int_to_eng(65)).to eq  'sixty-five'
      expect(int_to_eng(76)).to eq  'seventy-six'
      expect(int_to_eng(87)).to eq  'eighty-seven'
      expect(int_to_eng(98)).to eq  'ninety-eight'
    end
  end

  describe 'when given numbers between 100 and 999' do
    it 'returns numbers in letters' do
      expect(int_to_eng(100)).to eq  'one hundred'
      expect(int_to_eng(101)).to eq  'one hundred one'
      expect(int_to_eng(111)).to eq  'one hundred eleven'
      expect(int_to_eng(121)).to eq  'one hundred twenty-one'
      expect(int_to_eng(131)).to eq  'one hundred thirty-one'
      expect(int_to_eng(141)).to eq  'one hundred forty-one'
      expect(int_to_eng(151)).to eq  'one hundred fifty-one'
      expect(int_to_eng(161)).to eq  'one hundred sixty-one'
      expect(int_to_eng(171)).to eq  'one hundred seventy-one'
      expect(int_to_eng(181)).to eq  'one hundred eighty-one'
      expect(int_to_eng(191)).to eq  'one hundred ninety-one'
      expect(int_to_eng(200)).to eq  'two hundred'
      expect(int_to_eng(300)).to eq  'three hundred'
      expect(int_to_eng(400)).to eq  'four hundred'
      expect(int_to_eng(500)).to eq  'five hundred'
      expect(int_to_eng(600)).to eq  'six hundred'
      expect(int_to_eng(700)).to eq  'seven hundred'
      expect(int_to_eng(800)).to eq  'eight hundred'
      expect(int_to_eng(900)).to eq  'nine hundred'
    end
  end

  describe 'when given numbers between 1000 and 9999' do
    it 'returns numbers in letters' do
      expect(int_to_eng(1000)).to eq  'one thousand'
      expect(int_to_eng(1001)).to eq  'one thousand one'
      expect(int_to_eng(1011)).to eq  'one thousand eleven'
      expect(int_to_eng(1021)).to eq  'one thousand twenty-one'
      expect(int_to_eng(1041)).to eq  'one thousand forty-one'
      expect(int_to_eng(1071)).to eq  'one thousand seventy-one'
      expect(int_to_eng(1100)).to eq  'one thousand one hundred'
      expect(int_to_eng(1101)).to eq  'one thousand one hundred one'
      expect(int_to_eng(1111)).to eq  'one thousand one hundred eleven'
      expect(int_to_eng(1121)).to eq  'one thousand one hundred twenty-one'
      expect(int_to_eng(2001)).to eq  'two thousand one'
      expect(int_to_eng(6000)).to eq  'six thousand'
      expect(int_to_eng(5054)).to eq  'five thousand fifty-four'
      expect(int_to_eng(7000)).to eq  'seven thousand'
      expect(int_to_eng(7400)).to eq  'seven thousand four hundred'
      expect(int_to_eng(8970)).to eq  'eight thousand nine hundred seventy'
      expect(int_to_eng(9008)).to eq  'nine thousand eight'
      expect(int_to_eng(9999)).to eq  'nine thousand nine hundred ninety-nine'
    end


    it 'returns numbers in letters between 10_000 and 99_999' do
      expect(int_to_eng(10_000)).to eq  'ten thousand'
      expect(int_to_eng(10_001)).to eq  'ten thousand one'
      expect(int_to_eng(10_011)).to eq  'ten thousand eleven'
      expect(int_to_eng(10_121)).to eq  'ten thousand one hundred twenty-one'
      expect(int_to_eng(12_031)).to eq  'twelve thousand thirty-one'
      expect(int_to_eng(16_741)).to eq  'sixteen thousand seven hundred forty-one'
      expect(int_to_eng(20_051)).to eq  'twenty thousand fifty-one'
      expect(int_to_eng(76_741)).to eq  'seventy-six thousand seven hundred forty-one'
    end

    it 'returns numbers in letters between 100_000 and 999_999' do
      expect(int_to_eng(100_000)).to eq  'one hundred thousand'
      expect(int_to_eng(100_001)).to eq  'one hundred thousand one'
      expect(int_to_eng(100_011)).to eq  'one hundred thousand eleven'
      expect(int_to_eng(100_121)).to eq  'one hundred thousand one hundred twenty-one'
      expect(int_to_eng(101_231)).to eq  'one hundred one thousand two hundred thirty-one'
      expect(int_to_eng(120_341)).to eq  'one hundred twenty thousand three hundred forty-one'
    end

    it 'handles large numbers correctly' do
      expect(int_to_eng(1_000_000)).to eq 'one million'
      expect(int_to_eng(1_234_567)).to eq 'one million two hundred thirty-four thousand five hundred sixty-seven'
      # expect(int_to_eng(11_234_567)).to eq 'eleven million two hundred thirty-four thousand five hundred sixty-seven'
      expect(int_to_eng(1_000_000_000)).to eq 'one billion'
      #expect(int_to_eng(1_234_567_890)).to eq 'one billion two hundred thirty-four million five hundred sixty-seven thousand eight hundred ninety'
    end

  end
end
