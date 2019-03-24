//
//  Weapon.swift
//  Body Invaders
//
//  Created by Michel Anderson Lutz Teixeira on 20/03/19.
//  Copyright © 2019 Michel Lutz. All rights reserved.
//

import Foundation
import SpriteKit

protocol Weapon {
    var weaponName: String { get set }
    var power: Double { get set }
    var special: Bool { get set }
    var avatar: String { get set }
}

class Macrophages: SKSpriteNode, Weapon {
    var weaponName: String = "Macrophages"
    var power: Double = 2
    var special: Bool = false
    var avatar: String = ""
    let defaultSize: CGSize = CGSize(width: 80.0, height: 80.0)
    private var animationFrames: [SKTexture] = []
    
    init() {
        let texture = SKTexture(imageNamed: "Macrophage_0")
        let color = UIColor.red
        let size = defaultSize
        
        super.init(texture: texture, color: color, size: size)
        self.name = weaponName
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        for i in 0...3 {
            animationFrames.append(SKTexture(imageNamed: "Macrophage_\(i)"))
        }
        animate()
    }
    
    func animate() {
        run(SKAction.repeatForever(
            SKAction.animate(with: animationFrames,
                             timePerFrame: 0.1,
                             resize: false,
                             restore: false)))
    }
}

class Lymphocytes: SKSpriteNode, Weapon {
    var weaponName: String = "Lymphocyte"
    var power: Double = 10
    var special: Bool = false
    var avatar: String = ""
    let defaultSize: CGSize = CGSize(width: 80.0, height: 80.0)
    private var animationFrames: [SKTexture] = []
    
    init() {
        let texture = SKTexture(imageNamed: "Lymphocyte_0")
        let color = UIColor.clear
        let size = defaultSize
        super.init(texture: texture, color: color, size: size)
        self.name = weaponName
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        for i in 0...3 {
            animationFrames.append(SKTexture(imageNamed: "Lymphocyte_\(i)"))
        }
        animate()
    }
    
    func animate() {
        run(SKAction.repeatForever(
            SKAction.animate(with: animationFrames,
                             timePerFrame: 0.1,
                             resize: false,
                             restore: false)))
    }
}
