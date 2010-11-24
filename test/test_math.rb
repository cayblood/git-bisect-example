class TestMath < Test::Unit::TestCase
  def test_commutative_property_of_addition
    assert_equal(5 + 4, 4 + 5)
  end

  def test_associative_property_of_addition
    assert_equal((2 + 3) + 3, 2 + (3 + 4))
  end

  def test_distributive_property_of_addition
    assert_equal(4 * (6 + 3), 4 * 6 + 4 * 3)
  end

  def test_something_else
    assert_equal(0.5, 1 / 2.0)
  end

  def test_another_thing
    assert_in_delta(0.33, 1 / 3.0, 0.01)
  end

  def test_even_more_stuff
    assert_match(/\d+/, 'five, 6, seven')
  end

  def test_cool_stuff
    assert_raise RuntimeError, LoadError do
      raise 'Boom!!!'
    end
  end

  def test_one_more_thing
    assert_equal(123, '123'.to_i)
  end
end