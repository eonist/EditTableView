import UIKit

class EditTable: UITableView, UITableViewDelegate, UITableViewDataSource {
   var rowData: [CellDataKind]
   init(rowData: [CellDataKind], frame: CGRect, style: UITableView.Style) {
      self.rowData = rowData
      super.init(frame: frame, style: style)
      self.backgroundColor = .black
      registerCells( )// registers Cell types
      self.separatorStyle = .none
      self.dataSource = self
      self.delegate = self
      self.allowsMultipleSelectionDuringEditing = true // adds multiple selection support
//      self.setEditing(true, animated: false) // starts edit mode for table
      self.isEditing = true
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
