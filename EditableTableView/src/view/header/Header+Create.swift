import UIKit
import Spatial
import With
/**
 * Create
 */
extension Header {
   /**
    * LeftButton
    */
   func createLeftButton() -> UIButton {
      return with(.init()) {
//         $0.backgroundColor = .green
         $0.setTitleColor(.white, for: .normal)
         $0.titleLabel?.textAlignment = .center
         $0.setTitle("Cancel", for: .normal)
         addSubview($0)
         $0.anchorAndSize(to: self, width: 80, align: .topLeft, alignTo: .topLeft, offset: .init(x:6,y:0))
         $0.addTarget(self, action: #selector(onLeftButtonTap), for: .touchUpInside)
      }
   }
   /**
    * CenterTitle
    */
   func createCenterTitle() -> UILabel {
      return with(.init()) {
         $0.text = "Edit Awesome playlist"
//         $0.backgroundColor = .purple
         $0.textColor = .lightGray
         $0.textAlignment = .center
         addSubview($0)
         $0.anchorAndSize(to: self, width: 200, align: .topCenter, alignTo: .topCenter, offset: .init(x:0,y:0))
      }
   }
   /**
    * RightButton
    */
   func createRightButton() -> UIButton {
      return with(.init()) {
//         $0.backgroundColor = .red
         $0.setTitleColor(.white, for: .normal)
//         $0.titleLabel?.textAlignment = .center
         $0.setTitle("Done", for: .normal)
         addSubview($0)
         $0.anchorAndSize(to: self, width: 80, align: .topRight, alignTo: .topRight, offset: .init(x:-6,y:0))
         $0.addTarget(self, action: #selector(onRightButtonTap), for: .touchUpInside)
      }
   }
}
