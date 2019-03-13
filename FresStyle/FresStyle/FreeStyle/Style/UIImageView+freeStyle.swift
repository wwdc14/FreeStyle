//
//  UIImageView+freeStyle.swift
//  FresStyle
//
//  Created by FD on 2019/3/14.
//  Copyright © 2019 FD. All rights reserved.
//

import UIKit

extension StyleObject where Base: UIImageView {
    @discardableResult public func image(_ image: UIImage?) -> StyleObject {
        base.image = image
        return self
    }

    @discardableResult public func highlightedImage(_ highlightedImage: UIImage?) -> StyleObject {
        base.highlightedImage = highlightedImage
        return self
    }

    @discardableResult public func animationImages(_ animationImages: [UIImage]?) -> StyleObject {
        base.animationImages = animationImages
        return self
    }

    @discardableResult public func highlightedAnimationImages(_ highlightedAnimationImages: [UIImage]?) -> StyleObject {
        base.highlightedAnimationImages = highlightedAnimationImages
        return self
    }

    @discardableResult public func animationDuration(_ animationDuration: TimeInterval) -> StyleObject {
        base.animationDuration = animationDuration
        return self
    }

    @discardableResult public func animationRepeatCount(_ animationRepeatCount: Int) -> StyleObject {
        base.animationRepeatCount = animationRepeatCount
        return self
    }

    @discardableResult public func tintColor(_ tintColor: UIColor!) -> StyleObject {
        base.tintColor = tintColor
        return self
    }
}
