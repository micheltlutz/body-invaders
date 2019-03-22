/*:
 # Welcome to Body Invaders

 This playground will teach you how your body defends itself from bacteria and viruses that we are exposed every day...
 
 
 continue ...
 

 Enjoy - by Michel Anderson Lutz Teixeira
 */
//#-hidden-code
import PlaygroundSupport
import SpriteKit


let sceneView = SKView(frame: CGRect(x:0 , y:0, width: 640, height: 480))
let size = CGSize(width: 640, height: 480)
let scene = Scene1(size: size)
scene.scaleMode = .aspectFill
sceneView.presentScene(scene)
PlaygroundPage.current.liveView = sceneView
//#-end-hidden-code

