import UIKit

class TextCell: UITableViewCell {
   /**
    * Init
    */
   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
      super.init(style: style, reuseIdentifier: reuseIdentifier)
      self.selectionStyle = .none // disables the selection highlighting
      self.backgroundColor = .clear
      self.textLabel?.textColor = .white
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
