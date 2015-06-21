//
//  GameScene.swift
//  SpriteKit Testing
//
//  Created by David Haber on 6/20/15.
//  Copyright (c) 2015 David Haber. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var woodStockpile = 0
    var chopWood:SKLabelNode!
    var displayWood:SKLabelNode!
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        chopWood = SKLabelNode(fontNamed:"Helvetica Neue")
        chopWood.text = "Saw Trees";
        chopWood.fontSize = 65;
        chopWood.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame)+30);
        
        self.addChild(chopWood)
        
        displayWood = SKLabelNode(fontNamed:"Helvetica Neue")
        displayWood.text = String(woodStockpile);
        displayWood.fontSize = 65;
        displayWood.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame)-30);
        
        self.addChild(displayWood)
   friendlyfriend
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch in (touches as! Set<UITouch>) {
           if chopWood.containsPoint(touch.locationInNode(self)) {
                woodStockpile += 1
                displayWood.text = String(woodStockpile)
            }
            
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
