//
//  FreeStyleProtocol.swift
//  FresStyle
//
//  Created by FD on 2019/3/2.
//  Copyright © 2019 FD. All rights reserved.
//

import Foundation

public protocol FreeStyleProtocl {
    associatedtype Style
    var fs: StyleObject<Style> { get }
}

extension FreeStyleProtocl {
    public var fs: StyleObject<Self> {
        return StyleObject(self)
    }
}

public struct StyleObject<Base> {
    var base: Base
    init(_ base: Base) {
        self.base = base
    }
}
