require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/romanize'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe 'romanize' do

  it 'takes a number as argument' do
    proc { romanize() }.must_raise ArgumentError
  end

  #Detta test kan kommenteras bort om man inte vill test 'Undantagshantering' på C- eller A-nivå
  it 'raises ArgumentError with correct error message if called with zero (romans had no way of writing zero' do
    proc { romanize(0) }.must_raise ArgumentError, 'can not encode zero'
  end

  #Detta test kan kommenteras bort om man inte vill test 'Undantagshantering' på C- eller A-nivå
  it 'raises ArgumentError with correct error message if called with negative number' do
    proc { romanize(rand(1000) * -1) }.must_raise ArgumentError, 'can not encode negative number'
  end

  it 'returns a string' do
    romanize(rand(1000)).must_be_instance_of String
  end

  it 'encodes single-digit numbers' do
    romanize(1).must_equal 'I'
    romanize(2).must_equal 'II'
    romanize(3).must_equal 'III'
    romanize(4).must_equal 'IV'
    romanize(5).must_equal 'V'
    romanize(6).must_equal 'VI'
    romanize(7).must_equal 'VII'
    romanize(8).must_equal 'VIII'
    romanize(9).must_equal 'IX'
  end

  it 'encodes double digit numbers' do
    romanize(10).must_equal 'X'
    romanize(12).must_equal 'XII'
    romanize(20).must_equal 'XX'
    romanize(36).must_equal 'XXXVI'
    romanize(44).must_equal 'XLIV'
    romanize(87).must_equal 'LXXXVII'
    romanize(92).must_equal 'XCII'
  end

  it 'encodes triple digit numbers' do
    romanize(100).must_equal 'C'
    romanize(666).must_equal 'DCLXVI'
    romanize(747).must_equal 'DCCXLVII'
    romanize(999).must_equal 'CMXCIX'
  end

  it 'encodes four digit numbers' do
    romanize(1000).must_equal 'M'
    romanize(1066).must_equal 'MLXVI'       # Battle of Hastings
    romanize(1492).must_equal 'MCDXCII'     # Columbus 'discovers' America
    romanize(1978).must_equal 'MCMLXXVIII'  # I am born
    romanize(2063).must_equal 'MMLXIII'     # First Contact
  end
end