class Api::ParamsController < ApplicationController
  def first_letter
    @first_letter_a = params["message"]
    render "first_letter.json.jb"
  end
end
