import UIKit
import ReusableCell_iOS

class EditablePlaylistCell: BaseCell, ReusableCellKind {
   class var defaultReuseIdentifier: String { return "\(EditablePlaylistCell.self)" }
   lazy var artistLabel: UILabel = createArtistLabel()
   lazy var songTitleLabel: UILabel = createSongTitleLabel()
   /**
    * Data
    */
   override var data: CellDataKind? {
      didSet {
         guard let data: PlaylistCellDataKind = data as? PlaylistCellDataKind else { return }
         artistLabel.text = data.artistName
         songTitleLabel.text = data.songTitle
      }
   }
}
