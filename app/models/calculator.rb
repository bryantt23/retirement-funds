class Calculator < ActiveRecord::Base
  validates :age, :initial_contribution, :yearly_contribution, :annual_interest_rate, presence: true,  :numericality => { :greater_than_or_equal_to => 0 }

  def how_long_until_retirement(age)
    65-age
  end

  def how_much_at_retirement

  end

end
# , :initial_contribution, :yearly_contribution, :annual_interest_rate
