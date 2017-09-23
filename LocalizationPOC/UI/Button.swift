//
//  Button.swift
//  LocalizationPOC
//
//  Created by Daniel Sumara on 23.09.2017.
//  Copyright © 2017 Korson. All rights reserved.
//

import UIKit

open class Button: UIButton {
    
    @IBInspectable
    public var localizable: Bool = false {
        didSet {
            guard localizable else { return }
            guard let text = titleLabel?.text else { return }
            
            let localizedText = NSLocalizedString(text, tableName: "UIStrings", comment: text)
            
            [UIControlState.normal, .selected, .highlighted].forEach { setTitle(localizedText, for: $0) }
        }
    }
    
}
