//
//  GameScene.swift
//  SpaceShooter
//
//  Created by IS on 6/21/18.
//  Copyright © 2018 IS. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    
    var starfield:SKEmitterNode!
    var player:SKSpriteNode!
    
    override func didMove(to view: SKView) {
        
        //starfield init
        
        starfield = SKEmitterNode(fileNamed: "Starfield")
        starfield.position = CGPoint(x: 0, y: 1472)
        starfield.advanceSimulationTime(10)
        self.addChild(starfield)
        
        starfield.zPosition = -1
        
        //shuttle init
        
        player = SKSpriteNode(imageNamed: "shuttle")
        player.position = CGPoint ( x: self.frame.size.width / 2 + (-375) , y: player.size.height / 10 + (-600))
        self.addChild(player)
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
    
        // Called before each frame is rendered
    
    }
}
