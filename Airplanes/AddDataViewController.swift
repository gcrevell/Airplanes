//
//  AddDataViewController.swift
//  Airplanes
//
//  Created by Voltmeter Amperage on 7/7/16.
//  Copyright © 2016 Gabriel Revells. All rights reserved.
//

import UIKit

class AddDataViewController: UIViewController {
    
    @IBOutlet weak var feetInchView: UIView!
    @IBOutlet weak var blocksView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        feetInchView.clipsToBounds = true
//        blocksView.clipsToBounds = true
        
        feetInchView.frame.size.width = self.view.frame.width
        
        blocksView.frame.size.width = 0
        blocksView.frame.origin.x = self.view.frame.maxX
        
//        blocksView.layoutIfNeeded()
//        blocksView.updateConstraints()

        
//        feetInchesView.clipsToBounds = true
//        feetInchesView.frame.size.width = self.view.frame.width
//        
//        A.frame.size.width = 0
//        B.frame.size.width = self.view.frame.width
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changedInputType(_ sender: AnyObject) {
        UIView.animate(withDuration: 1) {
            if self.blocksView.frame.size.width == 0 {
                self.feetInchView.frame.size.width = 0
                
                self.blocksView.frame.size.width = self.view.frame.width
                self.blocksView.frame.origin.x = 0
            } else {
                self.feetInchView.frame.size.width = self.view.frame.width
                
                self.blocksView.frame.size.width = 0
                self.blocksView.frame.origin.x = self.view.frame.maxX
            }
        }
    }

}
