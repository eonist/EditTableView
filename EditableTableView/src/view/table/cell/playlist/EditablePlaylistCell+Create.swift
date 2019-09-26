import UIKit
import With
import Spatial
/**
 * Create
 */
extension EditablePlaylistCell {
   /**
    * ArtistLabel
    */
   func createArtistLabel() -> UILabel {
      return with(.init()) {
         $0.text = "Artist"
         $0.textColor = .white
         $0.font = .systemFont(ofSize: 14)
         addSubview($0)
         $0.anchorAndSize(to: self, sizeTo: self, align: .topLeft, alignTo: .topLeft, multiplier: .init(width: 1, height: 0.5), offset: .init(x:48, y: 8), sizeOffset: .init(width: -48, height: -8))
      }
   }
   /**
    * SongTitle
    */
   func createSongTitleLabel() -> UILabel {
      return with(.init()) {
         $0.text = "SongTitle"
         $0.textColor = .gray
         $0.font = .systemFont(ofSize: 14)
         addSubview($0)
         $0.anchorAndSize(to: artistLabel, align: .topLeft, alignTo: .bottomLeft )
      }
   }
}
