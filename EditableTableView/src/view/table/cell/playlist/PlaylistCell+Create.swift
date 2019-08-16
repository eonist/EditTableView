import UIKit
import With
import Spatial
/**
 * Create
 */
extension PlaylistCell {
   /**
    * TrackNumber
    */
   func createTrackNumberLabel() -> UILabel {
      return with(.init()) {
         $0.text = "0"
         $0.textColor = .gray
         $0.textAlignment = .center
         $0.font = .systemFont(ofSize: 12)
         addSubview($0)
         $0.anchorAndSize(to: self, width: 32, align: .topLeft, alignTo: .topLeft)
      }
   }
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
   /**
    * Fixme: ⚠️️ copy the code from CustomTable project, that disclosure icon
    * Fixme: ⚠️️ rename to createDisclosureButton
    */
   @objc func createOptionsButton() -> UIButton {
      return with(.init()) {
         addSubview($0)
//         $0.backgroundColor = .white
         let image: UIImage = .init(imageLiteralResourceName: "optionbutton")
         $0.setImage(image, for: .normal)
         $0.activateAnchorAndSize { view in
            let a = Constraint.anchor(view, to: self, align: .centerRight, alignTo: .centerRight, offset: .init(x: -12, y: 0))
            let h = Constraint.height(view, to: self, offset: -24)
            let w = Constraint.length(view, to: self, viewAxis: .hor, toAxis: .ver, offset: -24)
            return (a, (w, h))
         }
         $0.addTarget(self, action: #selector(onOptionsButtonClick), for: .touchUpInside)
//         $0.isAccessibilityElement = true
         $0.accessibilityIdentifier = "optnBtn"
      }
   }
}
