class PollsController < ApplicationController
  def index
    polls = Poll.all
    render json: {status: 200, polls: get_polls_and_answers(polls)}
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
    poll = Poll.destroy(params[:id])

    render json: {status: 204}
  end

  private

  def poll_params
    params.required(:poll).permit(:title, :question)
  end

  # a method to return to the angular a object of
  # the poll and the array of answers
  def get_polls_and_answers(polls)
    pollArray = []
    if polls.length > 0
      polls.each {|poll|
        pollArray.push({
          id: poll.id,
          title: poll.title,
          question: poll.question,
          answers: poll.answers
        })
      }
    end
    puts pollArray
    pollArray
  end
end
