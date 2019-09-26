import UIKit

class EditView: UIView {
   lazy var header: EditViewHeader = createHeader()
   lazy var table: EditTable = createTable()
   /**
    * Initiate
    */
   override init(frame: CGRect) {
      super.init(frame: frame)
      backgroundColor = .gray
      _ = header
      _ = table
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
