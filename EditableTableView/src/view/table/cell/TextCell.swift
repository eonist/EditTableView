import UIKit

class TextCell: UITableViewCell {
   /**
    * Init
    */
   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
      super.init(style: style, reuseIdentifier: reuseIdentifier)
//      self.selectionStyle = .none // disables the selection highlighting
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
/**
 * Customization
 */
extension TextCell {
   /**
    * Avoids highlight background
    */
   override func setHighlighted(_ highlighted: Bool, animated: Bool) {}
   /**
    * Enables the cells to not have selected bg in edit-mode
    */
   override func setSelected(_ selected: Bool, animated: Bool) {
      super.setSelected(selected, animated: false)
      self.selectedBackgroundView = {
         let view = UIView()
         view.backgroundColor = self.isEditing ? .clear : .gray
         return view
      }()
   }
}
