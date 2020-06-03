module PostHelper
  def post_params
    params.require(:post).permit(:title,:body)
  end
end
