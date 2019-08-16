class Header: UIView {
  lazy var leftButton: UIButton = createLeftButton()
  lazy var centerTitle: UILabel = createCenterTitle()
  lazy var rightButton: UIButton = createRightButton()
  
  init() {
    backgroundColor = .gray
    _ = leftButton
    _ = centerTitle
    _ = rightButton
  }
}
