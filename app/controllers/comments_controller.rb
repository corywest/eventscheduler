class CommentsController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @event = Event.find(params[:event_id])
    @comment = @event.comments.create(comment_params)
    redirect_to event_path(@event)
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to event_path(@event)
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
