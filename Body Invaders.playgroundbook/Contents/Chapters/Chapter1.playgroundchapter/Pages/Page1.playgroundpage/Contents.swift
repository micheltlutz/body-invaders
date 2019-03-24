/*:
 # Welcome to Body Invaders
 
> This playground will teach you how your body defends itself from bacteria and viruses that we are exposed to every day ...
 
 
 The stories of superheroes show us the struggles between the defenders of planet Earth and the enemies who try to invade our space and dominate us, with intense battles of powers between good and evil. In this war all the super powers necessary to defeat the villains are used as quickly as possible and without causing much mess, establishing world peace. In the human body are battled several of these battles every time bacteria and viruses invade our body trying to multiply and make us sick. In our blood we have well-trained small soldiers to attack any invader and destroy it, lymphocytes and macrophages.
 
 ---
 
 Let's present the two main heroes
 
 ## Macrophages
 
 Macrophages are the first to detect enemies and their function in the army is to neutralize, ingest (phagocytosis) and destroy the invading villains, in addition to processing them and presenting them to the lymphocytes.
 
 
 ![Macrophage](Macrophage_0.png)
 
 ## Lymphocytes
 
 Lymphocytes protect us against viruses, fungi and bacteria and are responsible for differentiating the cells from the body from foreign bodies. When they find the invaders in the bloodstream, they produce the antibodies, responsible for the destruction of the villains.
 
 
 ![Lymphocyte](Lymphocyte_0.png)
 
 ---
 In this chapter your enemies are two types of bacteria
 
 ## Bacilus
 
 ![Backterium](Bacterium_0.png)
 
 
 ## Cocus
 
 ![Backterium 2](Bacterium2_0.png)
 
 ---
 
 # Instructions
 
 Tap the bacteria to kill them.
 
 You have 2 types of weapons **Macrophages** and **Lymphocytes**
 
 ## Macrophages
 Have 2 points of power
 
 ## Lymphocytes
 Have 10 points of power
 
 
 To change weapons tap the hero at the bottom of the screen. You have 3 minutes to kill as many bacteria as possible
 
 ---
 
 
> The inspirations and motivations for the creation of this playgroundBook game are:
> My wife **Karen** and the little babies **Alice** and **Anita**
>
> Enjoy - by ***Michel Anderson Lutz Teixeira***
 
 

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

