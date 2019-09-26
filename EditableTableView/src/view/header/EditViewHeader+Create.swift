import UIKit
import Spatial
import With
/**
 * Create
 */
extension EditViewHeader {
   /**
    * LeftButton
    */
   func createLeftButton() -> UIButton {
      return with(.init()) {
         $0.setTitleColor(.white, for: .normal)
         $0.contentHorizontalAlignment = .left
         $0.setTitle("Back", for: .normal)
         addSubview($0)
         $0.anchorAndSize(to: self, width: 80, align: .topLeft, alignTo: .topLeft, offset: .init(x: 12, y: 0))
         $0.addTarget(self, action: #selector(onLeftButtonTap), for: .touchUpInside)
      }
   }
   /**
    * CenterTitle
    */
   func createCenterTitle() -> UILabel {
      return with(.init()) {
         $0.text = "Edit: Awesome playlist"
         $0.textColor = .lightGray
         $0.textAlignment = .center
         addSubview($0)
         $0.anchorAndSize(to: self, width: 200, align: .topCenter, alignTo: .topCenter, offset: .init(x: 0, y: 0))
      }
   }
   /**
    * RightButton
    */
   func createRightButton() -> UIButton {
      return with(.init()) {
         $0.contentHorizontalAlignment = .right
         $0.setTitleColor(.white, for: .normal)
         $0.titleLabel?.textAlignment = .right
         $0.setTitle("Delete", for: .normal)
         addSubview($0)
         $0.anchorAndSize(to: self, width: 80, align: .topRight, alignTo: .topRight, offset: .init(x: -12, y: 0))
         $0.addTarget(self, action: #selector(onRightButtonTap), for: .touchUpInside)
      }
   }
}
