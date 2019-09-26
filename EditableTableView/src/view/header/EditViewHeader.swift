import UIKit

class EditViewHeader: UIView {
   lazy var leftButton: UIButton = createLeftButton()
   lazy var centerTitle: UILabel = createCenterTitle()
   lazy var rightButton: UIButton = createRightButton()
   override init(frame: CGRect) {
      super.init(frame: frame)
      backgroundColor = .black
      _ = leftButton
      _ = centerTitle
      _ = rightButton
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
