class PostsScreen < ProMotion::TableScreen
  title "Recent Posts"
  # searchable placeholder: "Search Posts"

  def on_opened
    set_tab_bar_item title: "Posts", icon: "newspaper.png"
  end

  def will_appear
    set_nav_bar_right_button "Reload", action: :pull_remote_posts, type: UIBarButtonItemStyleDone
    self.view.backgroundColor = UIColor.darkGrayColor
    
  end

  def table_data
    @posts = [{ title: 'foo', action: :open_article }]
    [{ cells: @posts }]
  end

  def pull_remote_posts
    @posts = []
    BW::HTTP.get("http://localhost:3000/posts.json") do |response|
      result_data = BW::JSON.parse(response.body.to_str)
      result_data.each do |post_hash|
        post = Post.new(post_hash)
        @posts << { title: post.title, action: :open_article }
      end
    end
  end
end
