class ContributorsScreen < ProMotion::Screen

  def on_opened
    set_tab_bar_item title: "Contributors", icon: "id-card.png"
  end

  def will_appear
    self.view.backgroundColor = UIColor.yellowColor
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
