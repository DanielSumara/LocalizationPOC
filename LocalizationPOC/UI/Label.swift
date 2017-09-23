//
//  Label.swift
//  LocalizationPOC
//
//  Created by Daniel Sumara on 23.09.2017.
//  Copyright © 2017 Korson. All rights reserved.
//

import UIKit

open class Label: UILabel {
    
    @IBInspectable
    public var localizable: Bool = false {
        didSet {
            guard localizable else { return }
            guard let text = text else { return }
            self.text = NSLocalizedString(text, tableName: "UIStrings", comment: text)
        }
    }
    
}
