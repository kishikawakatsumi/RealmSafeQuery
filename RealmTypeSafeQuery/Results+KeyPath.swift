//
//  Results+KeyPath.swift
//  RealmTypeSafeQuery
//
//  Created by Kishikawa Katsumi on 2017/09/12.
//  Copyright © 2017 Realm. All rights reserved.
//

import Foundation
import RealmSwift

extension Results {
    public func filter<P: Predicate>(_ expression: @autoclosure () -> P) -> Results<T> where P.ObjectType == T {
        return filter(expression().predicate)
    }

    public func sorted<RealmObject: Object, RealmProperty: RealmPropertyType>(byKeyPath keyPath: KeyPath<RealmObject, RealmProperty>, ascending: Bool = true) -> Results<T> {
        return sorted(by: [SortDescriptor(keyPath: keyPath._kvcKeyPathString!, ascending: ascending)])
    }

    public func sorted<RealmObject: Object, RealmProperty: RealmPropertyType>(byKeyPath keyPath: KeyPath<RealmObject, RealmProperty?>, ascending: Bool = true) -> Results<T> {
        return sorted(by: [SortDescriptor(keyPath: keyPath._kvcKeyPathString!, ascending: ascending)])
    }
}
