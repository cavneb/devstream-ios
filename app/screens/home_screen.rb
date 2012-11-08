class HomeScreen < ProMotion::Screen
  def on_appear
    # @posts_screen = PostsScreen.new(nav_bar: true)
    # posts_tab_bar_item = UITabBarItem.alloc.init
    # posts_tab_bar_item.title = "Posts"
    # posts_tab_bar_item.setFinishedSelectedImage(UIImage.imageNamed("newspaper"), withFinishedUnselectedImage:UIImage.imageNamed("newspaper"))
    # @posts_screen.view_controller.tabBarItem = posts_tab_bar_item

    # @contributors_screen = ContributorsScreen.new(nav_bar: true)
    # contributors_screen_tab_bar_item = UITabBarItem.alloc.init
    # contributors_screen_tab_bar_item.title = "Contributors"
    # contributors_screen_tab_bar_item.setFinishedSelectedImage(UIImage.imageNamed("id-card"), withFinishedUnselectedImage:UIImage.imageNamed("id-card"))
    # @contributors_screen.view_controller.tabBarItem = contributors_screen_tab_bar_item
    
    @posts        ||= PostsScreen.new
    @contributors ||= ContributorsScreen.new
    @tab_bar      ||= open_tab_bar @posts, @contributors
  end
end  
