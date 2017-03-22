//
//  OneViewController.swift
//  CircularRefDemo_Swift
//
//  Created by iLB on 16/3/19.
//  Copyright © 2016年 iLB. All rights reserved.
//

import UIKit

class OneViewController: UIViewController, TwoViewControllerDelegate {

    fileprivate var twoController: TwoViewController!
    fileprivate var threeController: ThreeViewController!
    fileprivate let name = "Paolo Maldini"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "One"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // delegate 有循环引用
    @IBAction func delegateCircularRefButtonClick() {
        twoController = TwoViewController()
        twoController.delegate = self
        self.navigationController?.pushViewController(twoController, animated: true)
    }
    
    // delegate 没有循环引用
    @IBAction func delegateNoCircularRefButtonClick() {
        let controller = TwoViewController()
        controller.delegate = self
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    // block 有循环引用
    @IBAction func blockCircularRefButtonClick() {
        threeController = ThreeViewController()
        // 正确写法
        threeController.testBlock = { [weak self] _ in
            print("Hello, \(self!.name)!")
        }
        /** // 错误写法
        threeController.testBlock = { _ in
            print("Hello, \(self.name)!")
        }
        */
        self.navigationController?.pushViewController(threeController, animated: true)
    }
    
    // block 没有循环引用
    @IBAction func blockNoCircularRefButtonClick() {
        let controller = ThreeViewController()
        controller.testBlock = { _ in
            print("Hello, \(self.name)!")
        }
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    // MARK: TwoViewControllerDelegate
    func delegateTest() {
        print("来自 TwoViewController 的问候")
    }
    
    deinit {
        print("OneViewController deinit")
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
