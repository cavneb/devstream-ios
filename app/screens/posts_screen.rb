class PostsScreen < ProMotion::Screen
  def will_appear
    self.view.backgroundColor = UIColor.darkGrayColor
    add_element UILabel.alloc.initWithFrame(CGRectMake(25, 50, 275, 150)), {
      text: "ProMotion is a new way to easily organize and develop RubyMotion apps using the concept of screens.",
      borderStyle: UITextBorderStyleRoundedRect,
      backgroundColor: UIColor.whiteColor,
      font: UIFont.systemFontOfSize(14),
      numberOfLines: 0,
      lineBreakMode: UILineBreakModeWordWrap,
      layer: {
        borderWidth: 5,
        cornerRadius: 15,
        borderColor: UIColor.grayColor
      }
    }
  end
end
