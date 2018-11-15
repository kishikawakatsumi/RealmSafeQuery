//
//  SortDescriptor+KeyPath.swift
//  RealmTypeSafeQuery
//
//  Created by Yosaku Toyama on 2018/07/20.
//  Copyright © 2018年 Kishikawa Katsumi. All rights reserved.
//

import Foundation
import RealmSwift

extension SortDescriptor {
    public init<RealmObject: Object, RealmProperty: RealmPropertyType>(keyPath: KeyPath<RealmObject, RealmProperty>, ascending: Bool = true) {
        self.init(keyPath: keyPath._kvcKeyPathString!, ascending: ascending)
    }

    public init<RealmObject: Object, RealmProperty: RealmPropertyType>(keyPath: KeyPath<RealmObject, RealmProperty?>, ascending: Bool = true) {
        self.init(keyPath: keyPath._kvcKeyPathString!, ascending: ascending)
    }
}
