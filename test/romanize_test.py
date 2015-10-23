#encoding: utf-8

from nose.tools import *
import sys
import random
sys.path.append('..')

from romanize import romanize


def test_romanize_takes_a_number_as_argument():
    assert_raises(TypeError, romanize)


#Detta test kan kommenteras bort om man inte vill test 'Undantagshantering' på C- eller A-nivå
def test_romanize_raises_ValueError_with_correct_error_message_if_called_with_zero():
    with assert_raises(ValueError) as e:
        romanize(0)
    assert_equal(e.exception.message, 'can not encode zero')

#Detta test kan kommenteras bort om man inte vill test 'Undantagshantering' på C- eller A-nivå
def test_romanize_raises_ValueError_with_correct_error_message_if_called_with_negative_number():
    with assert_raises(ValueError) as e:
        romanize(random.randint(1, 1000) * -1)
    assert_equal(e.exception.message, 'can not encode negative number')


def test_romanize_returns_a_string():
    assert_is_instance(romanize(random.randint(1, 1000)), str)


def test_romanize_encodes_single_digit_numbers():
    assert_equal(romanize(1), 'I')
    assert_equal(romanize(2), 'II')
    assert_equal(romanize(3), 'III')
    assert_equal(romanize(4), 'IV')
    assert_equal(romanize(5), 'V')
    assert_equal(romanize(6), 'VI')
    assert_equal(romanize(7), 'VII')
    assert_equal(romanize(8), 'VIII')
    assert_equal(romanize(9), 'IX')


def test_romanize_encodes_double_digit_numbers():
    assert_equal(romanize(10),'X')
    assert_equal(romanize(12),'XII')
    assert_equal(romanize(20),'XX')
    assert_equal(romanize(36),'XXXVI')
    assert_equal(romanize(44),'XLIV')
    assert_equal(romanize(87),'LXXXVII')
    assert_equal(romanize(92),'XCII')


def test_romanize_encodes_triple_digit_numbers():

    assert_equal(romanize(100), 'C')
    assert_equal(romanize(666), 'DCLXVI')
    assert_equal(romanize(747), 'DCCXLVII')
    assert_equal(romanize(999), 'CMXCIX')


def test_romanize_encodes_four_digit_numbers():
    assert_equal(romanize(1000), 'M')
    assert_equal(romanize(1066), 'MLXVI')       # Battle of Hastings
    assert_equal(romanize(1492), 'MCDXCII')     # Columbus 'discovers' America
    assert_equal(romanize(1978), 'MCMLXXVIII')  # I am born
    assert_equal(romanize(2063), 'MMLXIII')     # First Contact
