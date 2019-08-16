import UIKit

class MainVC: UIViewController {
   override func viewDidLoad() {
      super.viewDidLoad()
      view = EditView()
      view.backgroundColor = .orange
   }
   override var prefersStatusBarHidden: Bool { return true }
}
