//
//  SecondViewController.swift
//  Picture Editor
//
//  Created by Fabian Hernandez Aguilar on 2/14/19.
//  Copyright © 2019 Fabian Hernandez Aguilar. All rights reserved.
//


//Color view controller
import UIKit



class SecondViewController: UIViewController {

   
    
    @IBOutlet weak var toneimageview: UIImageView!
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
    @IBAction func setwhite(_ sender: Any) {
        
        gray = UIColor.white.cgColor
        drawpreview()
    }
    @IBAction func setmagenta(_ sender: Any) {
        
        gray = UIColor.magenta.cgColor
        drawpreview()
        
    }
    @IBAction func setpurple(_ sender: Any) {
        gray = UIColor.purple.cgColor
        drawpreview()
        
    }
    @IBAction func setgreen(_ sender: Any) {
        gray = UIColor.green.cgColor
        drawpreview()
        
    }
    @IBAction func setbrown(_ sender: Any) {
        
        gray = UIColor.brown.cgColor
        drawpreview()
    }
    @IBAction func setyellow(_ sender: Any) {
        
        gray = UIColor.yellow.cgColor
        drawpreview()
        
        
    }
    
    @IBAction func setred(_ sender: Any) {
        
        gray = UIColor.red.cgColor
        drawpreview()
    }
    @IBAction func setblue(_ sender: Any) {
        
        gray = UIColor.blue.cgColor
        drawpreview()
        
        
    }
    @IBAction func orangeset(_ sender: Any) {
        
        gray = UIColor.orange.cgColor
        drawpreview()
        
    }
    @IBAction func sliderChanged(_ sender: Any) {
        
         let slider = sender as! UISlider
        
        //updates the color as the slider moves.
        gray = gray.copy(alpha: CGFloat(slider.value))!
        drawpreview()
    }
    func drawpreview() {
        toneimageview.backgroundColor = UIColor(cgColor: gray)
        UIGraphicsBeginImageContext(toneimageview.frame.size)
        
        toneimageview.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
      
        
        
    }
    
}
