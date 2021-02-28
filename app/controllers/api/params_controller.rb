class Api::ParamsController < ApplicationController
  def first_letter
    get_name = params["message"]

    if get_name[0] == "a"
      @message = "Hey! Your name starts with an A."
    else @message = "#{get_name}"     end
    render "first_letter.json.jb"
  end

  def number_guess
    number = 30
    input_number = params[:your_guess].to_i
    if input_number < 30
      @message = "Too low!"
    elsif input_number > 30
      @message = "Too high"
    else
      @message = "You got it!"
    end
    render "first_letter.json.jb"
  end
end
