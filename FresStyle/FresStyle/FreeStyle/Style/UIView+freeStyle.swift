//
//  UIView+freeStyle.swift
//  FresStyle
//
//  Created by FD on 2019/3/13.
//  Copyright © 2019 FD. All rights reserved.
//

import UIKit

extension UIView: FreeStyleProtocl {
    public typealias Style = UIView
}

extension StyleObject where Base: UIView {
    @discardableResult func backgroundColor(_ backgroundColor: UIColor) -> StyleObject {
        base.backgroundColor = backgroundColor
        return self
    }

    @discardableResult func clipsToBounds(_ clipsToBounds: Bool) -> StyleObject {
        base.clipsToBounds = clipsToBounds
        return self
    }

    @discardableResult public func frame(_ frame: CGRect) -> StyleObject {
        base.frame = frame
        return self
    }

    @discardableResult public func bounds(_ bounds: CGRect) -> StyleObject {
        base.bounds = bounds
        return self
    }

    @discardableResult public func center(_ center: CGPoint) -> StyleObject {
        base.center = center
        return self
    }

    @discardableResult public func alpha(_ alpha: CGFloat) -> StyleObject {
        base.alpha = alpha
        return self
    }

    @discardableResult public func isOpaque(_ isOpaque: Bool) -> StyleObject {
        base.isOpaque = isOpaque
        return self
    }

    @discardableResult public func isHidden(_ isHidden: Bool) -> StyleObject {
        base.isHidden = isHidden
        return self
    }
}
