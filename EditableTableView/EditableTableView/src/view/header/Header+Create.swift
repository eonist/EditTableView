import UIKit
import Spatial
import With

extension Header {
   /**
    * LeftButto
    */
  func createLeftButton() {
    with(.init()) {
      $0.text = "Cancel"
      $0.backgroundColor = .green
      $0.textColor = .white
      addSubview($0)
      $0.alignment = .left
      $0.anchorAndSize(to:self, width: 120, align: .topLeft, alignTo: .topLeft, offset: .init(x:20,y:0))
      btn.addTarget(self, action: #selector(buttonTouched), for: .touchUpInside)
      self.view.addSubview(btn)
    }
  }
   /**
    * CenterTitle
    */
  func createCenterTitle() {
    with(.init()) {
      $0.text = "Edit Awesome playlist"
      $0.backgroundColor = .purple
      $0.textColor = .liteGray
      $0.alignment = .center
      addSubview($0)
      $0.anchorAndSize(to:self, width: 120, align: .topCenter, alignTo: .topCenter, offset: .init(x:0,y:0))
    }
  }
   /**
    * RightButton
    */
  func createRightButton() {
    with(.init()) {
      $0.text = "Done"
      $0.backgroundColor = .yellow
      $0.textColor = .white
      addSubview($0)
      $0.alignment = .right
      $0.anchorAndSize(to:self, width: 120, align: .topRight, alignTo: .topRight, offset: .init(x:-20,y:0))
    }
  }
}
