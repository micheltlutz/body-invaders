//
//  GameViewController.swift
//  Body Invaders
//
//  Created by Michel Anderson Lutz Teixeira on 20/03/19.
//  Copyright © 2019 Michel Lutz. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import AVFoundation

public class GameViewController: UIViewController {
    var stage: SKView!
    var musicPlayer: AVAudioPlayer!
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override public func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        stage = (view as! SKView)
        stage.ignoresSiblingOrder = true
        presentsScene()
//        playMusic()
    }
    
//    func playMusic(){
//        if let musicURL = Bundle.main.url(forResource: "music", withExtension: "m4a"){
//            musicPlayer = try! AVAudioPlayer(contentsOf: musicURL)
//            musicPlayer.numberOfLoops = -1
//            musicPlayer.volume = 2
//            musicPlayer.play()
//        }
//    }
    
    func presentsScene(){
//        let size = CGSize(width: 320, height: 568)
        let size = CGSize(width: view.frame.width, height: view.frame.height)
        let scene = Scene1(size: size)
        scene.gameViewController = self
        scene.scaleMode = .aspectFill
        stage.presentScene(scene, transition: .doorsOpenVertical(withDuration: 0.5))
    }
    
    override public var prefersStatusBarHidden: Bool {
        return true
    }
}
