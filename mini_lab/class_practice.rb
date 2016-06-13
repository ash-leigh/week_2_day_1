# In this lab, we'd like you to make a class of your own. Something that you find interesting, it can be anything. It must:

# have at least 3 properties (instance variables)
# have getters and setters for those properties
# have at least 2 behaviours (methods)
# be test driven
# If you are stuck for ideas, you can make a Cat class. It has a name, a favourite food and a colour. It must be able to walk (just puts "I am walking") and sleep (puts "I am sleeping").

class CatClass

  def initialize(input_name, input_favourite_food, input_colour, input_activity_type)
    @name = input_name
    @favourite_food = input_favourite_food
    @colour = input_colour
    @activity_type = input_activity_type
  end

  def name
    return @name
  end

  def set_name(new_cat_name)
    @name = new_cat_name
  end

  def cat_activity()
    return "I am walking" if @activity_type == "walking"
    return "I am sleeping" if @activity_type == "sleeping"
  end

end