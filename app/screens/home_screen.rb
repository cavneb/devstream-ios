class HomeScreen < ProMotion::Screen
  def on_load
    @posts = PostsScreen.new
    @contributors = ContributorsScreen.new
    @tab_bar = open_tab_bar @posts, @contributors
  end
end  
