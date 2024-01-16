//
//  FlagButton.swift
//  hws-project-02
//
//  Created by Edwin Cardenas on 1/16/24.
//

import UIKit

class FlagButton: UIButton {
    
    var flagName: String
    
    init(flagName: String) {
        self.flagName = flagName
        
        super.init(frame: .zero)
        
        setImage(UIImage(named: flagName)?.withRenderingMode(.alwaysOriginal), for: .normal)
        layer.borderWidth = 1
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = 5
        layer.masksToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
