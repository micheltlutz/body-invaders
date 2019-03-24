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
    var heartBeat: SKLabelNode!
    var lifeLabel: SKLabelNode!
    var bloodstream: SKSpriteNode!
    let player = Player()
    var timerBacterium: Timer!
    var timerRedBloodCells: Timer!
    var macrophages = Macrophages()
    var lymphocytes = Lymphocytes()
    var selectedWeapon: Weapon!
    var circle: SKShapeNode!
    
    var score: Double = 0 {
        didSet {
            scoreLabel.text = "Score: \(Int(score))"
        }
    }
    
    override public init(size: CGSize) {
        super.init(size: size)
    }

    override public func didMove(to view: SKView) {
        addBackground()
        addScore()
        addLife()
        addMacrophages()
        addLymphocytes()
        addHeartBeat()
        addWaponSelected()
        selectedWeapon = lymphocytes
        timerBacterium = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true, block: { (timer) in
            self.spawnBacterium()
        })
        
        timerRedBloodCells = Timer.scheduledTimer(withTimeInterval: 1.5, repeats: true, block: { (timer) in
            self.spawnRodBloodCells()
        })
    }
    
    func spawnBacterium() {
        let enemy = Bacterium(type: randomBacteriumType())
        enemy.zPosition = 3
        let initialPosition = randomXPosition(with: enemy.size.width)
        enemy.position = CGPoint(x: initialPosition, y: -enemy.size.height)
        addChild(enemy)
    }
    
    private func randomBacteriumType() -> BacteriumTypes {
        var types = BacteriumTypes.allCases
        return types[Int(arc4random_uniform(2))]
    }
    
    func spawnRodBloodCells() {
        let cell = RedBloodCell()
        cell.zPosition = 2
        let initialPosition = randomXPosition(with: cell.size.width)
        cell.position = CGPoint(x: initialPosition, y: -cell.size.height)
        addChild(cell)
    }
    
    private func randomXPosition(with bodyWidth: CGFloat) -> CGFloat {
        let initialPosition = CGFloat(arc4random_uniform(UInt32(Int(size.width - 80))) + 74)
        var xPos = initialPosition - (bodyWidth / 2)
        if xPos <= 150 || xPos >= (size.width - 150) {
            xPos = randomXPosition(with: bodyWidth)
        }
        return xPos
    }
    
     override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)           // 1
            let touchedNode = nodes(at: location)
            if let node = touchedNode.first, let enemy = node as? Bacterium {
                enemy.decrementLife(value: selectedWeapon.power)
                if enemy.life <= 0 {
                    score += enemy.points
                    enemy.removeFromParent()
                }
            }
            
            if let node = touchedNode.first, let weapon = node as? Weapon {
                selectedWeapon = weapon
                circle.position = location
            }
        }
    }
    
    override public func update(_ currentTime: TimeInterval) {
//        if gameStarted {
//            let yVelocity = player.physicsBody!.velocity.dy * 0.001 as CGFloat
//            player.zRotation = yVelocity
//        }
        floatEnemies()
        floatRedBloodCells()
        removeExcessEnemies()
    }
    
    func addBackground() {
        backgroundColor = UIColor(red: 146, green: 72, blue: 64, alpha: 1.0)
        bloodstream = SKSpriteNode(imageNamed: "BackgroundBlodstream")
        bloodstream.position = CGPoint(x: size.width / 2, y: size.height / 2)
        bloodstream.zPosition = 1
        bloodstream.size = self.size
        addChild(bloodstream)
    }

    func addScore() {
        scoreLabel = SKLabelNode(fontNamed: "Chalkduster")
        scoreLabel.fontSize = 40
        scoreLabel.text = "Score: \(0)"
        scoreLabel.zPosition = 5
        scoreLabel.position = CGPoint(x: size.width / 2, y: size.height - 35)
        scoreLabel.alpha = 0.8
        addChild(scoreLabel)
    }
    
    func addLife() {
        lifeLabel = SKLabelNode(fontNamed: "Chalkduster")
        lifeLabel.fontSize = 35
        lifeLabel.text = "\(Int(player.life))"
        lifeLabel.zPosition = 5
        lifeLabel.position = CGPoint(x: size.width * 0.25, y: size.height - 35)
        lifeLabel.alpha = 0.8
        addChild(lifeLabel)
    }
    
    func addHeartBeat() {
        let heartBeat = Heart()
        heartBeat.zPosition = 5
        heartBeat.position = CGPoint(x: size.width * 0.17, y: size.height - 25)
        addChild(heartBeat)
    }
    
    func addMacrophages() {
        macrophages.zPosition = 5
        macrophages.position = CGPoint(x: size.width * 0.18, y: 55)
        addChild(macrophages)
    }
    
    func addLymphocytes() {
        lymphocytes.zPosition = 5
        lymphocytes.position = CGPoint(x: size.width - 125, y: 55)
        addChild(lymphocytes)
    }
    
    func addWaponSelected() {
        circle = SKShapeNode(circleOfRadius: 60 ) // Size of Circle = Radius setting.
        circle.position = macrophages.position  //touch location passed from touchesBegan.
        circle.name = "defaultCircle"
        circle.strokeColor = SKColor.yellow
        circle.glowWidth = 2.0
        circle.zPosition = 5
        circle.fillColor = SKColor.clear
        addChild(circle)
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
    
    func floatRedBloodCells() {
        for child in children {
            if ((child as? RedBloodCell) != nil) {
                let yOffset: CGFloat = 20.0
                let newLocation = CGPoint(x: child.position.x, y: child.position.y + yOffset)
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
            } else if let redBloodCell = child as? RedBloodCell {
                if redBloodCell.position.y > size.height {
                    redBloodCell.removeFromParent()
                }
            }
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
