//
//  Enemies.swift
//  Body Invaders
//
//  Created by Michel Anderson Lutz Teixeira on 20/03/19.
//  Copyright © 2019 Michel Lutz. All rights reserved.
//

import Foundation
import SpriteKit

enum BacteriumTypes: String, CaseIterable {
    case basilus
    case cocus
    
    var enemyName: String {
        switch self {
        case .basilus:
            return "Bacterium1"
        case .cocus:
            return "Bacterium2"
        }
    }
    
    var avatar: String {
        switch self {
        case .basilus:
            return "Bacterium2_0"
        case .cocus:
            return "Bacterium_0"
        }
    }
    
    var framesBase: (name: String, count: Int) {
        switch self {
        case .basilus:
            return (name: "Bacterium2_", count: 7)
        case .cocus:
            return (name: "Bacterium_", count: 7)
        }
    }
    
    var life: Double {
        switch self {
        case .basilus:
            return 5
        case .cocus:
            return 2
        }
    }
    
    var points: Double {
        switch self {
        case .basilus:
            return 7
        case .cocus:
            return 2
        }
    }
}

class Bacterium: SKSpriteNode {
    private (set) var life: Double = 7
    private (set) var points: Double = 2
    var velocity: Double = 50
    let defaultSize: CGSize = CGSize(width: 100.0, height: 100.0)
    var category: UInt32 = 2
    private (set) var type: BacteriumTypes!
    private var animationFrames: [SKTexture] = []
    
    init(type: BacteriumTypes) {
        self.type = type
        let texture = SKTexture(imageNamed: type.avatar)
        let color = UIColor.clear
        let size = defaultSize
        self.life = type.life
        self.points = type.points
        super.init(texture: texture, color: color, size: size)
        self.name = type.enemyName
        setup()
    }
    
    func decrementLife(value: Double) {
        life -= value
    }
    
    private func setup() {
        for i in 0...type.framesBase.count {
            animationFrames.append(SKTexture(imageNamed: "\(type.framesBase.name)\(i)"))
        }
        animate()
        physicsBody = SKPhysicsBody(rectangleOf: defaultSize)
        physicsBody?.isDynamic = false
        physicsBody?.categoryBitMask = category
        physicsBody?.contactTestBitMask = Player.category
    }
    
    func animate() {
        run(SKAction.repeatForever(
            SKAction.animate(with: animationFrames,
                             timePerFrame: 0.1,
                             resize: false,
                             restore: false)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
