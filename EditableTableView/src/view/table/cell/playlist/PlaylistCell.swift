import UIKit
import ReusableCell_iOS

class PlaylistCell: BaseCell, ReusableCellKind {
   class var defaultReuseIdentifier: String { return "\(PlaylistCell.self)" }
//   lazy var trackNumberLabel: UILabel = createTrackNumberLabel()
   lazy var artistLabel: UILabel = createArtistLabel()
   lazy var songTitleLabel: UILabel = createSongTitleLabel()
//   lazy var optionsButton: UIView = createOptionsButton()
   /**
    * Data
    */
   override var data: CellDataKind? {
      didSet {
         guard let data: PlaylistCellDataKind = data as? PlaylistCellDataKind else { return }
         artistLabel.text = data.artistName
         songTitleLabel.text = data.songTitle
//         _ = optionsButton
      }
   }
   /**
    * The index of the cell-placement in the table
    */
   var index: Int? {
      didSet {
//         trackNumberLabel.text = "\((index ?? 0) + 1)"
      }
   }
}
/**
 * Customization
 */
extension PlaylistCell {
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
