//
//  Ground.swift
//  FlappySwift
//
//  Created by Giordano Scalzo on 03/06/2014.
//  Copyright (c) 2014 Effective Code. All rights reserved.
//

import SpriteKit

class Ground  {
    private var parallaxNode: ParallaxNode!
    private let textureName: String
    
    init(textureNamed textureName: String) {
        self.textureName = textureName
    }
    
    func addTo(parentNode: SKSpriteNode!) -> Ground {
        let width = parentNode.size.width
        let height = CGFloat(60.0)
        
        parallaxNode = ParallaxNode(width: width,
                              height: height,
                        textureNamed: textureName).zPosition(5).addTo(parentNode)
        return self
    }
}

// Startable
extension Ground : Startable {
    func start() -> Startable {
        parallaxNode.start(duration: 5.0)
        return self
    }
    
    func stop() -> Startable {
        parallaxNode.stop()
        return self
    }
}
