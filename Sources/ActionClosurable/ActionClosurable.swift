//
//  Module: ActionClosurable
//  Created by: MrTrent on 03.06.2024
//  Copyright (c) 2024 Zordz Union
//

import UIKit

public protocol ActionClosurable { }

public extension ActionClosurable where Self: AnyObject {
    
    typealias ActionClosure = (Self) -> Void
    typealias Configuration = (target: AnyObject, action: Selector)
    
    func convert(
        closure: @escaping ActionClosure,
        toConfiguration configure: (Configuration) -> Void
    ) {
        let actor = Actor(with: closure)
        configure((target: actor, action: #selector(Actor<AnyObject>.action(sender:))))
        actor.register(to: self)
    }
    
    static func convert(
        closure: @escaping ActionClosure,
        toConfiguration configure: (Configuration) -> Self
    ) -> Self {
        let actor = Actor(with: closure)
        let instance = configure((target: actor, action: #selector(Actor<AnyObject>.action(sender:))))
        actor.register(to: instance)
        return instance
    }
}

extension NSObject: ActionClosurable { }
