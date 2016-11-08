class PollsController < ApplicationController
  def index
    render json: {status: 200, polls: Poll.all}
  end

  def create
    poll = Poll.create(poll_params)

    if poll.save
      render json: {status: 200, poll: poll}
    else
      render json: {status: 400, response: "invalid data", poll: params}
    end
  end

  def destroy
  end

  private

  def poll_params
    params.required(:poll).permit(:title, :question)
  end
end
