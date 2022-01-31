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
    # @square_num = params.fetch("square_input").to_f
    # @square_result = @square_num ** 2
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
end
