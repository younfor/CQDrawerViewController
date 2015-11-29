//
//  CQNewsViewController.swift
//  cqbbs
//
//  Created by y on 15/11/29.
//  Copyright © 2015年 y. All rights reserved.
//

import UIKit

class CQNewsViewController: UIViewController {

    @IBAction func rightSide(sender: AnyObject) {
        NSNotificationCenter.defaultCenter().postNotificationName("showright", object: nil)
    }
    @IBAction func leftSide(sender: AnyObject) {
        NSNotificationCenter.defaultCenter().postNotificationName("showleft", object: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // 设置背景
        self.navigationController?.navigationBar.barTintColor = UIColor.redColor()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.whiteColor()]
    }
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

}
