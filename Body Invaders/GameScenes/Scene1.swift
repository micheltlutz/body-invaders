//
//  Scene1.swift
//  Body Invaders
//
//  Created by Michel Anderson Lutz Teixeira on 20/03/19.
//  Copyright © 2019 Michel Lutz. All rights reserved.
//

import SpriteKit
import UIKit
//import GameplayKit

public class Scene1: SKScene {
    var gameArea: CGFloat = 410.0
    var velocity: Double = 100.0
    var gameFinished = false
    var gameStarted = false
//    var playerCategory: UInt32 = 1
//    var enemyCategory: UInt32 = 2
//    var scoreCategory: UInt32 = 4
    var scoreLabel: SKLabelNode!
    var lifeLabel: SKLabelNode!
    var bloodstream: SKSpriteNode!
    let player = Player()
    var timer: Timer!
    var score: Double = 0 {
        didSet {
            scoreLabel.text = String(Int(score))
        }
    }
    
    override public init(size: CGSize) {
        super.init(size: size)
    }

    override public func didMove(to view: SKView) {
        addBackground()
        addScore()
        addLife()
        timer = Timer.scheduledTimer(withTimeInterval: 2.5, repeats: true, block: { (timer) in
            self.spawnEnemies()
        })
    }
    
    func spawnEnemies(){
        let initialPosition = CGFloat(arc4random_uniform(UInt32(Int(size.width - 80))) + 74)
        let enemy = Bacterium()
        enemy.zPosition = 2
        enemy.position = CGPoint(x: initialPosition - (enemy.size.width / 2), y: -enemy.size.height)
        addChild(enemy)
    }
    
     override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)           // 1
            let touchedNode = nodes(at: location)
            if let node = touchedNode.first, let enemy = node as? Bacterium {
                enemy.life = enemy.life - 2
                if enemy.life <= 0 {
                    score += enemy.points
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
    
    func addBackground() {
        backgroundColor = UIColor(red: 146, green: 72, blue: 64, alpha: 1.0)
        bloodstream = SKSpriteNode(imageNamed: "bloodstream")
        bloodstream.position = CGPoint(x: size.width / 2, y: size.height / 2)
        bloodstream.zPosition = 1
        bloodstream.size = self.size
        addChild(bloodstream)
    }

    func addScore() {
        scoreLabel = SKLabelNode(fontNamed: "Chalkduster")
        scoreLabel.fontSize = 94
        scoreLabel.text = "\(0)"
        scoreLabel.zPosition = 5
        scoreLabel.position = CGPoint(x: size.width / 2, y: size.height - 100)
        scoreLabel.alpha = 0.8
        addChild(scoreLabel)
    }
    
    func addLife() {
        lifeLabel = SKLabelNode(fontNamed: "Chalkduster")
        lifeLabel.fontSize = 50
        lifeLabel.text = "\(Int(player.life))"
        lifeLabel.zPosition = 5
        lifeLabel.position = CGPoint(x: size.width * 0.2, y: size.height - 100)
        lifeLabel.alpha = 0.8
        addChild(lifeLabel)
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
            if let enemy = child as? Bacterium {
                if enemy.position.y > size.height {
                    enemy.removeFromParent()
                    player.life -= enemy.points
                    lifeLabel.text = String(Int(player.life))
                }
            }
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
