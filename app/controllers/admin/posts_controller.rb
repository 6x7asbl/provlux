class Admin::PostsController < AdminController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  after_action :verify_post

  def index
  end

  def show
  end

  def new
    @post = current_user.posts.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:user_id, :title, :excerpt, :content, :pinned)
    end

    def verify_post
      authorize @post
    end
end
