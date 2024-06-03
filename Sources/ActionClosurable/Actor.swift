//
//  Module: ActionClosurable
//  Created by: MrTrent on 03.06.2024
//  Copyright (c) 2024 Zordz Union
//


import Foundation

// MARK: - Actor

final class Actor<T> {
    private let closure: (T) -> Void
    private var associationKey: UInt32 = 3262
    
    init(with closure: @escaping (T) -> Void) {
        self.closure = closure
    }
    
    @objc func action(sender: AnyObject) {
        guard let sender = sender as? T else { return }
        closure(sender)
    }
    
    func register(to object: AnyObject) {
        let collector = objc_getAssociatedObject(object, &associationKey) as? ActorsCollector ?? {
            let collector = ActorsCollector()
            objc_setAssociatedObject(object, &associationKey, collector, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            return collector
        }()
        collector.actors.append(self)
    }
}

// MARK: - ActorsCollector

private final class ActorsCollector {
    var actors: [Any] = []
}
