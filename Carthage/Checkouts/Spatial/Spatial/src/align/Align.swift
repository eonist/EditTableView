import Foundation
/**
 * Align is a util class to help align views and graphics. The core principle is based around a stage-pivot and an object pivot. The align type you add to these two pivot deterimins the final position of the object
 * - Remark: This is a very usefull class to have when positioning things in cases where using AutoLayout is hard or for testing things out
 * - Note: The align method only supports NSView/UIView. But use alignmentPoint instead if you have to work with different class types. As it does the same thing as the align method does
 */
class Align {
   /**
    * Aligns PARAM: view to PARAM: canvasAlignment and PARAM: viewAlignment within PARAM: canvasSize with a optional PARAM offset
    * - Parameter: view: Layout item you want to manipulate
    * - Parameter: canvasSize: Area size  on which you want to align the target to (usually the parent size)
    * - Parameter: canvasAlignment: alignment of the target on the canvas
    * - Parameter: viewAlignment: alignment of the target within its own canvas
    * - Parameter: offset: add additional offset in the x,y axis
    * ## Examples:
    * Align.align(someCircle,CGSize(400,300),.center,.topLeft)//Output: centers a circle within 400x300 rectangle
    * Align.align(someCircle,CGSize(400,300),.centerRight,.centerRight)//Output: aligns the circle to the y axis center and  to the right border of the rectangle but withinn the rectange
    */
   static func align(_ view: View, canvasSize: CGSize, canvasAlign: Alignment, viewAlign: Alignment, offset: CGPoint = .zero) {
      let alignmentPoint: CGPoint = Align.alignmentPoint(.init(width: view.frame.width, height: view.frame.height), canvasSize: canvasSize, canvasAlign: canvasAlign, objectAlign: viewAlign, offset: offset)
      view.frame.origin = alignmentPoint
   }
   /**
    * Returns the point from where to align target PARAM: objectSize within PARAM: canvasSize at PARAM: objectAlignment and PARAM: canvasAlignment and PARAM: offset
    * - Parameter: objectSize the size of the object that is being aligned
    * - Parameter: canvasSize is the size of the canvas the object is beeing aligned to (Thinkn of the canvas as a painting and the object as an element in that painting, figurativly speaking)
    * - Note: this function is usefull when aligning two or more objects where you can add the size together and find the correct alignment point
    */
   static func alignmentPoint(_ objectSize: CGSize, canvasSize: CGSize, canvasAlign: Alignment, objectAlign: Alignment, offset: CGPoint = .zero) -> CGPoint {
      let canvasP: CGPoint = Align.point(canvasSize, align: canvasAlign)
      let objP: CGPoint = Align.point(objectSize, align: objectAlign)
      let p: CGPoint = .init(x:canvasP.x - objP.x, y: canvasP.y - objP.y)
      return .init(x:p.x + offset.x, y: p.y + offset.y)
   }
   /**
    * Returns the pivot point of an object according to what pivotAlignment it has
    * ## EXAMPLES:
    * write an example
    */
   static func point(_ size: CGSize, align: Alignment) -> CGPoint {
      switch align {
      case .topLeft:return .init()
      case .topRight:return .init(x: size.width, y: 0)
      case .centerCenter:return .init(x: round((size.width / 2)), y: round((size.height / 2)))
      case .centerLeft: return .init(x: 0, y: round((size.height / 2)))
      case .topCenter: return .init(x: round((size.width / 2)), y: 0)
      case .centerRight: return .init(x: size.width, y: round((size.height / 2)))
      case .bottomRight: return .init(x: size.width, y: size.height)
      case .bottomLeft: return .init(x: 0, y: size.height)
      case .bottomCenter: return .init(x: round((size.width / 2)), y: size.height)
      }
   }
}
extension Align {
   /**
    * Aligns an array of view instances (batch align)
    * - Note: alt names: alignMany? or alignAll?
    */
   static func align(_ views: [View], canvasSize: CGSize, canvasAlign: Alignment, viewAlign: Alignment, offset: CGPoint = .init()) {
      views.forEach { view in Align.align(view, canvasSize: canvasSize, canvasAlign: canvasAlign, viewAlign: viewAlign, offset: offset) }
   }
}
