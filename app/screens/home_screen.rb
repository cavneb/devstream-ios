class HomeScreen < ProMotion::Screen
  def on_appear
    @posts        ||= PostsScreen.new(nav_bar: true)
    @contributors ||= ContributorsScreen.new(nav_bar: true)
    @tab_bar      ||= open_tab_bar @posts, @contributors
  end
end  
