//
//  IBRender.swift
//  BSToys
//
//  Created by 최 봉식 on 2018. 4. 26..
//  Copyright © 2018년 jake. All rights reserved.
//

import UIKit

@IBDesignable
class IBRender: UIButton
{
    @IBInspectable var integer: Int = 0
    @IBInspectable var float: CGFloat = 0
    @IBInspectable var double: Double = 0
    @IBInspectable var point: CGPoint = .zero
    @IBInspectable var size: CGSize = .zero
    @IBInspectable var customFrame: CGRect = .zero
    @IBInspectable var color: UIColor = UIColor.clear
    @IBInspectable var string: String = "testString"
    @IBInspectable var bool: Bool = false
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setTitle("MyTitle", for: .normal)
        setTitleColor(UIColor.blue, for: .normal)
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    @IBInspectable
    public var cornerRadius: CGFloat = 2.0 {
        didSet {
            self.layer.cornerRadius = self.cornerRadius
        }
    }
}
