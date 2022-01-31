class ApplicationController < ActionController::Base

  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb"})
  end

  def square_results
    @square_num = params.fetch("square_input").to_f
    @square_result = @square_num ** 2
    render ({ :template => "calculation_templates/square_results.html.erb"})
  end

  def blank_square_root_form
    render({ :template => "calculation_templates/square_root_form.html.erb"})
  end
  
  def square_root_results
    @square_root_num = params.fetch("square_root_input").to_f
    @square_root_result = @square_root_num ** (0.5)
    render ({ :template => "calculation_templates/square_root_results.html.erb"})
  end

  def random_form
    render({ :template => "calculation_templates/random_form.html.erb"})
  end

  def random_results
    @random_min = params.fetch("random_min").to_f
    @random_max = params.fetch("random_max").to_f
    @random_result = rand(@random_min..@random_max)
    render({ :template => "calculation_templates/random_results.html.erb"})
  end

  def blank_payment_form
    render({ :template => "calculation_templates/payment_form.html.erb"})
  end

  def payment_results
    @pay_apr = params.fetch("payment_apr").to_f
    @pay_n = params.fetch("payment_years").to_f*12
    @pay_pv = params.fetch("payment_principal").to_f
   
    @r = @pay_apr/1200

    @pay_num = (@r)*(@pay_pv)
    @pay_den = 1 - ((1 + @r) ** (-@pay_n))

    @payment_result = @pay_num / @pay_den
    render({ :template => "calculation_templates/payment_results.html.erb"})
  end



end
