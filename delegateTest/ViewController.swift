//
//  ViewController.swift
//  delegateTest
//
//  Created by MAC on 2018/10/23.
//  Copyright © 2018年 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,takoProtocol{
    //var mainView : TestView = TestView(frame: CGRectMake(100, 100, 100 , 100))
    override func viewDidLoad() {
        super.viewDidLoad()
        let testView = TestView.init(frame: CGRect.init(x: self.view.frame.origin.x, y: self.view.frame.origin.y, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height));
        testView.delegate = self
        self.view.addSubview(testView);
    }
    @IBAction func clickAddBtn(_ sender: Any) {
        print("test1")
    }
    func fatherFunc() -> String  {
        return "fatherFunc"
    }

    }

