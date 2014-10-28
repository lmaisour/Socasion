class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @event = Event.find(params[:event_id])
    @comment = @event.comments.create(comment_params)
      if @comment.save
        redirect_to @event
      else
        render new
      end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  def index
    @comments = Comment.all
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(comment_params)
      flash[:success] = "Comment Edited"
      redirect_to events_path
    else
      render 'edit'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:message,:user_id, :event_id)
  end

end
