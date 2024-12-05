class CommentsController < ApplicationController
  load_and_authorize_resource
  before_action :set_post, only: %i[new create]
  before_action :set_comment, only: %i[edit update destroy]

  # GET /comments/new
  def new
    @comment = @post.comments.new
  end

  # POST /comments
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params.merge(user_id: current_user.id))
  
    # Проверяем наличие parent_comment_id и устанавливаем связь
    if params[:comment][:comment_id].present?
      @comment.comment_id = params[:comment][:comment_id]
    end
  
    if @comment.save
      redirect_to @post, notice: "Comment was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end
  

  # GET /comments/1/edit
  def edit; end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      redirect_to @comment.post, notice: "Comment was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy
    redirect_to @comment.post, notice: "Comment was successfully destroyed.", status: :see_other
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :comment_id)
  end
end
