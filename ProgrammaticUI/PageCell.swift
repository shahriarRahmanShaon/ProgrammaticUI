//
//  PageCell.swift
//  ProgrammaticUI
//
//  Created by sergio shaon on 4/6/22.
//

import UIKit
class PageCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .purple
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
