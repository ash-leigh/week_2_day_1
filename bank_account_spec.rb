require ('minitest/autorun')
require_relative('bank_account')

class TestBankAccount < MiniTest::Test
  def test_account_name
    bank_account = BankAccount.new("Ashleigh", 50, "business")
    assert_equal("Ashleigh", bank_account.holder_name)
  end

  def test_set_account_name
    bank_account = BankAccount.new("Ashleigh", 50, "business")
    bank_account.holder_name = "Valerie"
    assert_equal("Valerie", bank_account.holder_name())
  end

  def test_pay_into_account
    bank_account = BankAccount.new("Ashleigh", 50, "business")
    bank_account.pay_in(100)
    assert_equal(150, bank_account.amount)
  end

  def test_monthly_fee_business
    bank_account = BankAccount.new("Ashleigh", 50, "business")
    bank_account.pay_monthly_fee()
    assert_equal(40, bank_account.amount)
  end

  def test_monthly_fee_personal
    bank_account = BankAccount.new("Ashleigh", 50, "personal")
    bank_account.pay_monthly_fee()
    assert_equal(45, bank_account.amount)
  end

end