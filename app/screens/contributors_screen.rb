class ContributorsScreen < ProMotion::Screen

  def on_opened
    set_tab_bar_item title: "Contributors", icon: "id-card.png"
  end

  def will_appear
    self.view.backgroundColor = UIColor.yellowColor
  end
end
