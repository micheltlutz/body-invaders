//
//  RedBloodCell.swift
//  Body Invaders
//
//  Created by Michel Anderson Lutz Teixeira on 23/03/19.
//  Copyright © 2019 Michel Lutz. All rights reserved.
//

import SpriteKit

public class RedBloodCell: SKSpriteNode {
    private var animationFrames: [SKTexture] = []
    let defaultSize: CGSize = CGSize(width: 100, height: 100)
    var animateAcion = SKAction()
    public init() {
        let texture = SKTexture(imageNamed: "RedBlodCell-0")
        let color = UIColor.red
        let size = defaultSize
        super.init(texture: texture, color: color, size: size)
        self.name = "RedBloodCell"
        setup()
    }
    
    func setup() {
        for i in 0...6 {
            animationFrames.append(SKTexture(imageNamed: "RedBlodCell-\(i)"))
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
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
