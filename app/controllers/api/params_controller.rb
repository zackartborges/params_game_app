class Api::ParamsController < ApplicationController
  def first_letter
    @get_name = params["message"]
    @first_letter_a = @get_name.split("")
    if @first_letter_a[0] == "a"
      @first_letter_a = "Hey! Your name starts with an A."
    end
    render "first_letter.json.jb"
  end
end
