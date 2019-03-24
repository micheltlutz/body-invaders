//
//  Heart.swift
//  Body Invaders
//
//  Created by Michel Anderson Lutz Teixeira on 24/03/19.
//  Copyright © 2019 Michel Lutz. All rights reserved.
//

import SpriteKit

class Heart: SKSpriteNode {
    private var animationFrames: [SKTexture] = []
    let defaultSize: CGSize = CGSize(width: 40, height: 40)
    var animateAcion = SKAction()
    init() {
        let texture = SKTexture(imageNamed: "Herart_0")
        let color = UIColor.red
        let size = defaultSize
        super.init(texture: texture, color: color, size: size)
        self.name = "Herart"
        setup()
    }
    
    func setup() {
        for i in 0...6 {
            animationFrames.append(SKTexture(imageNamed: "Herart_\(i)"))
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
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
