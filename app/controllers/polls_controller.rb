class PollsController < ApplicationController
  def index
    render json: {status: 200, polls: Poll.all}
  end

  def create
  end

  def destroy
  end
end
