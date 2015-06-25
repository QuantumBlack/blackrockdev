//
//  GameScene.swift
//  SpriteKit Testing
//
//  Created by David Haber on 6/20/15.
//  Copyright (c) 2015 David Haber. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    /* Declaring workers */
    var workerStock = 0
    var workerAdd:SKLabelNode!
    var workerDisplay:SKLabelNode!
    
    /* Declaring wood */
    var woodStock = 0
    var woodAdd:SKLabelNode!
    var woodDisplay:SKLabelNode!
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        woodAdd = SKLabelNode(fontNamed:"Helvetica Neue")
        woodAdd.text = "Saw Trees";
        woodAdd.fontSize = 65;
        woodAdd.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame)+30);
        
        self.addChild(woodAdd)
        
        woodDisplay = SKLabelNode(fontNamed:"Helvetica Neue")
        woodDisplay.text = String(woodStock);
        woodDisplay.fontSize = 65;
        woodDisplay.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame)-30);
        
        self.addChild(woodDisplay)
 
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        /* Called when a touch begins */
        
        for touch in (touches as! Set<UITouch>) {
           if woodAdd.containsPoint(touch.locationInNode(self)) {
                woodStock += 1
                woodDisplay.text = String(woodStock)
            }
            
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
