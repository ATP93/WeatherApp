//
//  StringExtension.swift
//  Weather-App-2
//
//  Created by mitchell hudson on 11/13/15.
//  Copyright © 2015 mitchell hudson. All rights reserved.
//

import UIKit

extension String {
    func stringToAttributedStringWithFontFamily(_ fontFamily: String, and fontSize: String) -> NSAttributedString {
        var html = self
        while let range = html.range(of: "\n") {
            html.replaceSubrange(range, with: "</br>")
        }
        
        html = "<span style='font-family: \(fontFamily); font-size:\(fontSize)'>"+html+"</span>"
        let data = html.data(using: String.Encoding.unicode, allowLossyConversion: true)
        let attrStr = try! NSAttributedString(data: data!, options: [NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType], documentAttributes: nil)
        return attrStr
    }
}
