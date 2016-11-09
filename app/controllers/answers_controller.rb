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
    answer = Answer.find(params[:id])

    answer.update(
      responses: answer[:responses] + 1
    )

    if answer.save
      render json: {status: 200}
    else
      render json: {status: 422, answer: answer}
  end

  private

  def set_poll
    @poll = Poll.find(params[:id])
  end
end
