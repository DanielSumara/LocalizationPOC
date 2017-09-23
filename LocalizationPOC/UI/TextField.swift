//
//  TextField.swift
//  LocalizationPOC
//
//  Created by Daniel Sumara on 23.09.2017.
//  Copyright © 2017 Korson. All rights reserved.
//

import UIKit

open class TextField: UITextField {
    
    @IBInspectable
    public var localizableText: Bool = false {
        didSet {
            guard localizableText else { return }
            guard let text = text else { return }
            self.text = NSLocalizedString(text, tableName: "UIStrings", comment: text)
        }
    }
    
    @IBInspectable
    public var localizablePlaceholder: Bool = false {
        didSet {
            guard localizablePlaceholder else { return }
            guard let placeholder = placeholder else { return }
            self.placeholder = NSLocalizedString(placeholder, tableName: "UIStrings", comment: placeholder)
        }
    }
    
}
