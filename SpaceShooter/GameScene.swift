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
    var player:SKEmitterNode!
    
    override func didMove(to view: SKView) {
        
        starfield = SKEmitterNode(fileNamed: "Starfield")
        starfield.position = CGPoint(x: 0, y: 1472)
        starfield.advanceSimulationTime(10)
        self.addChild(starfield)
        
        starfield.zPosition = -1
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
    
        // Called before each frame is rendered
    
    }
}
