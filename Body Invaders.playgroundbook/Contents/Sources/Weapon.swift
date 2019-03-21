//
//  Weapon.swift
//  Body Invaders
//
//  Created by Michel Anderson Lutz Teixeira on 20/03/19.
//  Copyright © 2019 Michel Lutz. All rights reserved.
//

import Foundation

protocol Weapon {
    var name: String { get set }
    var power: Double { get set }
    var special: Bool { get set }
    var avatar: String { get set }
}

class Macrophages: Weapon {
    var name: String = "Macrophages"
    var power: Double = 2
    var special: Bool = false
    var avatar: String = ""
}

class TLymphocytes: Weapon {
    var name: String = "T-lymphocytes"
    var power: Double = 10
    var special: Bool = true
    var avatar: String = ""
}
