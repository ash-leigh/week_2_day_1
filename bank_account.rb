class BankAccount

  attr_reader :holder_name, :amount
  #this class method can be used in place of all getter functions (eg def holder_name, def amount)

  attr_writer :holder_name
  #this class method can be used in place of setters (eg def set_holder_name)

  attr_accessor :holder_name
  #creates bother getters and setters

   def initialize(input_holder_name, input_amount, input_type)
    @holder_name = input_holder_name
    @amount = input_amount
    @type = input_type
    end

  # def holder_name
  # #commonly these functions are called getters as their sole purpose is to get information
  #   return @holder_name
  # end

  # def set_holder_name(new_holder_name)
  # #these are setters - they set information
  #   @holder_name = new_holder_name
  # end

  # def amount
  # #getter
  #   return @amount
  # end

  def pay_in(paid_in_amount)
    @amount = @amount + paid_in_amount
    # another option is to do the following. They result in the exact same outcome;
    # @amount += paid_in_amount
  end

  def pay_monthly_fee()
    if @type == "business"
    @amount -= 10
    elsif @type == "personal"
    @amount -= 5
    end
  end
  #other options for this are as follows;

  #@amount -= 10 if @type == "business"
  #@amount -= 5 if type == "personal"

  #case @type
  #when "business" then @amount -= 10
  #when "personal" then @amount -= 5
  #end

  #def pay_monthly_fee()
    #fees ={
      # "personal" => 5,
      # "business" => 10
      # }
    # @amount -= fees[@type]
    # }
  #end

end