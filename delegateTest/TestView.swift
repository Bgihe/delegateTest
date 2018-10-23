//
//  TestView.swift
//  delegateTest
//
//  Created by MAC on 2018/10/23.
//  Copyright © 2018年 MAC. All rights reserved.
//
import Foundation
import UIKit
protocol takoProtocol {
    func fatherFunc () -> String
}

class TestView: UIView {
    @IBOutlet weak var buttonA: UIButton!
    var delegate:takoProtocol?
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
        print(delegate?.fatherFunc() as Any)
        buttonA.addTarget(self,
                                   action: #selector(clickAddBtn),
                                   for: .touchUpInside)
    }
    @IBAction func clickAddBtn(_ sender: Any) {
        print(delegate!.fatherFunc())
    }
    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
    var contentView:UIView!
    func setUp() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "TestView", bundle: bundle)
        contentView = (nib.instantiate(withOwner: self, options: nil)[0] as! UIView)
        
        contentView.frame = bounds
        addSubview(contentView)
    }
    
    func testFunc() -> String{
        return "Success!!"
    }

}
