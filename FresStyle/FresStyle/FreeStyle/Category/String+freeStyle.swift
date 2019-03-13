//
//  String+freeStyle.swift
//  FresStyle
//
//  Created by FD on 2019/3/2.
//  Copyright © 2019 FD. All rights reserved.
//

import Foundation

public extension String {
    var fs: StyleObject<NSMutableAttributedString> {
        return StyleObject<NSMutableAttributedString>(NSMutableAttributedString(string: self))
    }
}
