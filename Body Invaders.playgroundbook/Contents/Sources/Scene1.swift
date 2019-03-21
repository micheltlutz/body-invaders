//
//  Scene1.swift
//  Body Invaders
//
//  Created by Michel Anderson Lutz Teixeira on 20/03/19.
//  Copyright © 2019 Michel Lutz. All rights reserved.
//

import SpriteKit
import GameplayKit

public class Scene1: SKScene {
    weak var gameViewController: GameViewController?
    var gameArea: CGFloat = 410.0
    var velocity: Double = 100.0
    var gameFinished = false
    var gameStarted = false
    var playerCategory: UInt32 = 1
    var enemyCategory: UInt32 = 2
    var scoreCategory: UInt32 = 4
    var scoreLabel: SKLabelNode!
    let player = Player()
    
    var timer: Timer!
    
    override public init(size: CGSize) {
        super.init(size: size)
        
//        backgroundColor = .blue
//        anchorPoint = CGPoint(x: 0, y: 1.0)
        
//        animationBackground = SKSpriteNode(color: UIColor.blue, size: size)
//        animationBackground.anchorPoint = CGPoint(x: 0, y: 1.0)
//        animationBackground.position = CGPoint(x: 0, y: 0)
//        self.addChild(animationBackground)
    }
    
    override public func didMove(to view: SKView) {
//        physicsWorld.contactDelegate = self
        addScore()
        timer = Timer.scheduledTimer(withTimeInterval: 2.5, repeats: true, block: { (timer) in
            self.spawnEnemies()
        })
    }
    
    
    func spawnEnemies(){
        let initialPosition = CGFloat(arc4random_uniform(UInt32(Int(size.width - 80))) + 74)
        print(initialPosition)
        print(size)
        let enemy = Bacterium()


        print(enemy.size)
        enemy.zPosition = 1
        enemy.position = CGPoint(x: initialPosition - (enemy.size.width / 2), y: -enemy.size.height)
        addChild(enemy)
    }
    
     override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)           // 1
            let touchedNode = nodes(at: location)

            if let node = touchedNode.first, let enemy = node as? Bacterium {
                print("enemy.life: \(enemy.life)")
                enemy.life = enemy.life - 2
                if enemy.life <= 0 {
                    enemy.removeFromParent()
                }
            }
        }
    }
    
    override public func update(_ currentTime: TimeInterval) {
//        if gameStarted {
//            let yVelocity = player.physicsBody!.velocity.dy * 0.001 as CGFloat
//            player.zRotation = yVelocity
//        }
        floatEnemies()
        removeExcessEnemies()
    }

    func addScore(){
        scoreLabel = SKLabelNode(fontNamed: "Chalkduster")
        scoreLabel.fontSize = 94
        scoreLabel.text = "\(0)"
        scoreLabel.zPosition = 5
        scoreLabel.position = CGPoint(x: size.width / 2, y: size.height - 100)
        scoreLabel.alpha = 0.8
        addChild(scoreLabel)
    }

    func floatEnemies() {
        for child in children {
            if ((child as? Bacterium) != nil) {
                let xOffset: CGFloat = CGFloat(arc4random_uniform(20)) - 10.0
                let yOffset: CGFloat = 20.0
                let newLocation = CGPoint(x: child.position.x + xOffset, y: child.position.y + yOffset)
                let moveAction = SKAction.move(to: newLocation, duration: 0.2)
                child.run(moveAction)
            }
        }
    }
    
    func removeExcessEnemies() {
        for child in children {
            if child.position.y > size.height {
                print("Destruindo: \(child.name) y: \(child.position.y)")
                child.removeFromParent()
            }
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension Scene1: SKPhysicsContactDelegate {
    public func didBegin(_ contact: SKPhysicsContact){
        
        print("DID BEGIN")
        
        
        
//        if gameStarted{
//            if contact.bodyA.categoryBitMask == scoreCategory || contact.bodyB.categoryBitMask == scoreCategory{
//                score += 1
//                scoreLabel.text = "\(score)"
//                run(scoreSound)
//            } else if contact.bodyA.categoryBitMask == enemyCategory || contact.bodyB.categoryBitMask == enemyCategory{
//                print("Game Over")
//                gameOver()
//                run(gameOverSound)
//            }
//        }
    }
}
