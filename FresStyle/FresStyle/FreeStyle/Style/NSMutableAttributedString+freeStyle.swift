//
//  NSMutableAttributedString+freeStyle.swift
//  FresStyle
//
//  Created by FD on 2019/3/2.
//  Copyright © 2019 FD. All rights reserved.
//

import UIKit

extension NSMutableAttributedString {
    public var count: Int {
        return string.count
    }
}

public extension StyleObject where Base: NSMutableAttributedString {
    @discardableResult func foregroundColor(_ color: UIColor) -> StyleObject {
        base.addAttribute(.foregroundColor, value: color, range: NSMakeRange(0, base.count))
        return self
    }

    @discardableResult func backgoundColor(_ color: UIColor) -> StyleObject {
        base.addAttribute(.backgroundColor, value: color, range: NSMakeRange(0, base.count))
        return self
    }

    @discardableResult func font(_ font: UIFont = UIFont.preferredFont(forTextStyle: .body)) -> StyleObject {
        base.addAttribute(.font, value: font, range: NSMakeRange(0, base.count))
        return self
    }

    @discardableResult func ligature(_ ligature: Int) -> StyleObject {
        base.addAttribute(.ligature, value: NSNumber(integerLiteral: ligature), range: NSMakeRange(0, base.count))
        return self
    }

    @discardableResult func kern(_ kern: Double) -> StyleObject {
        base.addAttribute(.kern, value: NSNumber(floatLiteral: kern), range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func strikethroughStyle(_ strikethroughStyle: Int) -> StyleObject {
        base.addAttribute(.strikethroughStyle, value: NSNumber(integerLiteral: strikethroughStyle), range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func underlineStyle(_ underlineStyle: Int) -> StyleObject {
        base.addAttribute(.underlineStyle, value: NSNumber(integerLiteral: underlineStyle), range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func strokeColor(_ strokeColor: UIColor) -> StyleObject {
        base.addAttribute(.strokeColor, value: strokeColor, range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func strokeWidth(_ strokeWidth: Double) -> StyleObject {
        base.addAttribute(.strokeWidth, value: NSNumber(floatLiteral: strokeWidth), range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func shadow(_ shadow: NSShadow) -> StyleObject {
        base.addAttribute(.shadow, value: shadow, range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func textEffect(_ textEffect: NSString) -> StyleObject {
        base.addAttribute(.textEffect, value: textEffect, range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func attachment(_attachment: NSTextAttachment) -> StyleObject {
        base.addAttribute(.attachment, value: attachment, range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func link(_ link: NSURL) -> StyleObject {
        base.addAttribute(.link, value: link, range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func link(_ link: NSString) -> StyleObject {
        base.addAttribute(.link, value: link, range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func baselineOffset(_ baselineOffset: Double) -> StyleObject {
        base.addAttribute(.baselineOffset, value: NSNumber(floatLiteral: baselineOffset), range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func underlineColor(_ underlineColor: UIColor) -> StyleObject {
        base.addAttribute(.underlineColor, value: underlineColor, range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func strikethroughColor(_ strikethroughColor: UIColor) -> StyleObject {
        base.addAttribute(.strikethroughColor, value: strikethroughColor, range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func obliqueness(_ obliqueness: Double) -> StyleObject {
        base.addAttribute(.obliqueness, value: NSNumber(floatLiteral: obliqueness), range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func expansion(_ expansion: Double) -> StyleObject {
        base.addAttribute(.expansion, value: NSNumber(floatLiteral: expansion), range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func verticalGlyphForm(_ verticalGlyphForm: Int) -> StyleObject {
        base.addAttribute(.verticalGlyphForm, value: NSNumber(integerLiteral: verticalGlyphForm), range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func writingDirection(_ writingDirection: NSArray) -> StyleObject {
        base.addAttribute(.writingDirection, value: writingDirection, range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func paragraphStyle(_ paragraphStyle: NSParagraphStyle) -> StyleObject {
        base.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, base.length))
        return self
    }

    @discardableResult func match(_ match: NSRange, builder: ((NSAttributedString) -> Void)) -> StyleObject {
        let matched = NSAttributedString(attributedString: base.attributedSubstring(from: match))

        builder(matched)

        var resultRange: NSRange = NSMakeRange(match.location, 0)
        let pointer = NSRangePointer(mutating: &resultRange)
        base.addAttributes(matched.attributes(at: match.location, effectiveRange: pointer), range: match)
        return self
    }

    @discardableResult func match(_ text: String, builder: ((NSAttributedString) -> Void)) -> StyleObject {
        let range = base.mutableString.range(of: text)
        return match(range, builder: builder)
    }

    func render() -> NSAttributedString {
        return base.copy() as! NSAttributedString
    }
}
