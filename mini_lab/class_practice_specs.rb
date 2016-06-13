require ('minitest/autorun')
require_relative('class_practice')

class TestCatClass < MiniTest::Test

  def test_name
    cat_profile = CatClass.new("Garfield", "Lasagna", "Ginger", "sleeping")
    assert_equal("Garfield", cat_profile.name())
  end

  def test_set_name
    cat_profile = CatClass.new("Garfield", "Lasagna", "Ginger", "sleeping")
    cat_profile.set_name("Boots")
    assert_equal("Boots", cat_profile.name())
  end

  def test_cat_activity__walking
    cat_profile = CatClass.new("Garfield", "Lasagna", "Ginger", "walking")
    assert_equal("I am walking", cat_profile.cat_activity())
  end

  def test_cat_activity__sleeping
    cat_profile = CatClass.new("Garfield", "Lasagna", "Ginger", "sleeping")
    assert_equal("I am sleeping", cat_profile.cat_activity())
  end

end