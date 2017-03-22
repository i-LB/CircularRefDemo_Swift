//
//  ThreeViewController.swift
//  CircularRefDemo_Swift
//
//  Created by iLB on 16/3/19.
//  Copyright © 2016年 iLB. All rights reserved.
//

import UIKit

class ThreeViewController: UIViewController {

    var testBlock: (() -> ())!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Three"
        self.view.backgroundColor = UIColor.blue
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        testBlock()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        print("ThreeViewController deinit")
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
