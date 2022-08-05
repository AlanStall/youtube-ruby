class ProfileController < ApplicationController
  def index
    @profile = User.find_by!(email: params[:email])
    @videos = @profile.videos
  end

  def show
    @profile = User.find_by!(email: params[:email])
    @video = Video.friendly.find(params[:video_id])
  end

  def like
    @profile = User.find_by!(email: params[:email])
    @video = @profile.videos.find(params[:video_id])    
    redirect_to profile_show_path(@profile.email, @video.id, @video.title)
  end

  def dislike
    @profile = User.find_by!(email: params[:email])
    @video = @profile.videos.find(params[:video_id])    
    redirect_to profile_show_path(@profile.email, @video.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def video_params
      params.require(:video).permit(:title, :description, :likes, :video, :slug)
    end

end


