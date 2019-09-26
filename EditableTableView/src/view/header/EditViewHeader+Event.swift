import UIKit
/**
 * Event
 */
extension EditViewHeader {
   /**
    * When user taps on left button
    */
   @objc func onLeftButtonTap(sender: UIButton) {
      Swift.print("onLeftButtonTap")
      (self.superview as? EditView)?.onCancel()
   }
   /**
    * When user taps on the right button
    */
   @objc func onRightButtonTap(sender: UIButton) {
      Swift.print("onRightButtonTap")
      (self.superview as? EditView)?.onDone()
   }
}
