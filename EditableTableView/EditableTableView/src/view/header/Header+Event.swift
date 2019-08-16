import UIKit
/**
 * Event
 */
extension Header {
  @objc func onLeftButtonTap(sender: UIButton) {
      Swift.print("onLeftButtonTap")
    (self.superview as? EditPlaylistView)?.onCancel()
  }
  @objc func onRightButtonTap(sender: UIButton) {
      Swift.print("onRightButtonTap")
      (self.superview as? EditPlaylistView)?.onDone()
  }
}
