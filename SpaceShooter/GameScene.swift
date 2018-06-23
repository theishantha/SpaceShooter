//
//  GameScene.swift
//  SpaceShooter
//
//  Created by IS on 6/21/18.
//  Copyright © 2018 IS. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    
    var starfield:SKEmitterNode!
    var player:SKSpriteNode!
    
    var scoreLabel:SKLabelNode!
    var score:Int = 0 {
        didSet {
            scoreLabel.text = " Score: { score }"
        }
    }
    
    override func didMove(to view: SKView) {
        
        //starfield init
        
        starfield = SKEmitterNode(fileNamed: "Starfield")
        starfield.position = CGPoint(x: 0, y: 1472)
        starfield.advanceSimulationTime(10)
        self.addChild(starfield)
        
        starfield.zPosition = -1
        
        //shuttle init
        
        player = SKSpriteNode(imageNamed: "shuttle")
//      player.position = CGPoint ( x: self.frame.size.width / 2 + (-375) , y: player.size.height / 10 + (-600))
        player.position = CGPoint ( x: 0 , y: -550 )
        
        self.addChild(player)
        
        self.physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        self.physicsWorld.contactDelegate = self
        
        scoreLabel = SKLabelNode(text: "Score: 0")
        
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
    
        // Called before each frame is rendered
    
    }
}
