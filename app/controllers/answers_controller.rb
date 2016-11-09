class AnswersController < ApplicationController
  before_action :set_poll, only: [:create]

  def create
    params[:answers] do |text| #check to make sure that params[:answers] is right
      answer = Answer.create(
        text: text,
        responses: 0,
        poll_id: @poll.id
      )
    end

    render json: {status: 200, poll: @poll}
  end

  def update
    
  end

  private

  def set_poll
    @poll = Poll.find(params[:id])
  end
end
