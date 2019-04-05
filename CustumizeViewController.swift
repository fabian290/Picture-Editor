//
//  CustumizeViewController.swift
//  Picture Editor
//
//  Created by Fabian Hernandez Aguilar on 2/19/19.
//  Copyright © 2019 Fabian Hernandez Aguilar. All rights reserved.
//

import UIKit

class CustumizeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func brushsizeslider(_ sender: Any) {
        let slider = sender as! UISlider
        brushSize = CGFloat(slider.value)
        
        
    }
}
