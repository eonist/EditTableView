import UIKit
/**
 * Customization
 */
extension EditablePlaylistCell {
   /**
    * Avoids highlight background
    */
   override func setHighlighted(_ highlighted: Bool, animated: Bool) {}
   /**
    * Enables the cells to avoid having a selected bg in edit-mode
    * - Remark: simply setting the cell.selectionStyle = .none doesn't work with edit mode
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
