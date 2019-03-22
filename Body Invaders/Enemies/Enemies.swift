//
//  Enemies.swift
//  Body Invaders
//
//  Created by Michel Anderson Lutz Teixeira on 20/03/19.
//  Copyright © 2019 Michel Lutz. All rights reserved.
//

import Foundation
import SpriteKit

protocol Enemies {
    var enemyName: String { get set }
    var life: Double { get set }
    var velocity: Double { get set }
    var avatar: String { get set }
    var points: Double { get set }
}

class Bacterium: SKSpriteNode, Enemies {
    var enemyName: String = "Bacterium"
    var life: Double = 7
    var velocity: Double = 50
    var avatar: String = "backterium_d"
    let defaultSize: CGSize = CGSize(width: 100.0, height: 100.0)
    var category: UInt32 = 2
    var points: Double = 1
    
    init() {
        let texture = SKTexture(imageNamed: self.avatar)
        let color = UIColor.red
        let size = defaultSize
        super.init(texture: texture, color: color, size: size)
        self.name = "Bacterium"
        setup()
    }
    
    private func setup() {
        physicsBody = SKPhysicsBody(rectangleOf: defaultSize)
        physicsBody?.isDynamic = false
        physicsBody?.categoryBitMask = category
        physicsBody?.contactTestBitMask = Player.category
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
