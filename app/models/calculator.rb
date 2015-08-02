class Calculator < ActiveRecord::Base
  validates :age, :initial_contribution, :yearly_contribution, :annual_interest_rate, presence: true,  :numericality => { :greater_than_or_equal_to => 0 }

  def how_long_until_retirement(age)
    65-age
  end

  def how_much_at_retirement(age, initial_contribution, yearly_contribution, annual_interest_rate)

    years_until_retirement=how_long_until_retirement(age)

    if(annual_interest_rate==0)
      initial_contribution + yearly_contribution * years_until_retirement
    elsif(yearly_contribution==0)
      total = initial_contribution*((1+annual_interest_rate/100.to_f))**years_until_retirement
      total.to_i
    else

      years_until_retirement.times do

        initial_contribution = total + yearly_contribution

        total = initial_contribution*((1+annual_interest_rate/100.to_f))
      end

    end

  end

end
# , :initial_contribution, :yearly_contribution, :annual_interest_rate
