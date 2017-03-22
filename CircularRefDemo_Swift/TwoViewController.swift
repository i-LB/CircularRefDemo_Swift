//
//  TwoViewController.swift
//  CircularRefDemo_Swift
//
//  Created by iLB on 16/3/19.
//  Copyright © 2016年 iLB. All rights reserved.
//

import UIKit

// www.jianshu.com/p/98d44fd924a1
// www.csdn.net/artile/2015-07-16/2825231-tencent-swift/3
protocol TwoViewControllerDelegate: NSObjectProtocol {
    func delegateTest()
}

class TwoViewController: UIViewController {

    // 正确写法
    weak var delegate: TwoViewControllerDelegate!
    // 错误写法
    // var delegate: TwoViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Two"
        self.view.backgroundColor = UIColor.orange
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        print("TwoViewController deinit")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
