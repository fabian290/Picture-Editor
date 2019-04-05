//
//  ViewController.swift
//  Picture Editor
//
//  Created by Fabian Hernandez Aguilar on 2/6/19.
//  Copyright © 2019 Fabian Hernandez Aguilar. All rights reserved.
//

import UIKit
//Adding somekind of subclasses
//delagate is a representative

//uppercase for classes
//camel rule, for variables and funcions.
//Indentations- the way parantheses are align.

var gray : CGColor = UIColor.black.cgColor
var brushSize : CGFloat = 5.0


class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    @IBOutlet weak var Imageview: UIImageView!
    
    var points : CGPoint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    @IBAction func savebutton(_ sender: Any) {
        
        UIImageWriteToSavedPhotosAlbum(Imageview.image!, nil, nil, nil)
        //alert that notfies the user that he has saved
        let alertController = UIAlertController(title: "you saved", message: "congrats", preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "ok", style: .default ))
        present(alertController, animated: true)
        
    }
    @IBAction func draw(_ sender: Any) {
        
        gray = UIColor.black.cgColor
    }
 
    @IBAction func erasebutton(_ sender: Any) {
        
        gray = UIColor.lightGray.cgColor
        print("hello")
    }
    
    
    
    @IBAction func resetbutton(_ sender: Any) {
        self.Imageview.image = nil
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        let touch =  touches.first
        
        touch?.location(in: view)
        
        let location = (touch?.location(in: view))
        
        points = touch?.location(in: view)
    }
    


    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch =  touches.first
        
        
        let location = (touch?.location(in: view))
        
        drawLine(pointA: points!, pointB: location!)
        points = location
        
    }
    @IBAction func toolbar(_ sender: Any) {
        
        let myController = UIImagePickerController()
        myController.sourceType = .photoLibrary
        myController.delegate = self
        present(myController, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        print("image pick returned")
        Imageview.image = info[.originalImage] as? UIImage
        dismiss(animated: true, completion: nil)
    }
    
    func drawLine (pointA: CGPoint, pointB: CGPoint) {
        
        UIGraphicsBeginImageContext(Imageview.frame.size)
        
        let context = UIGraphicsGetCurrentContext()
        
        print("drawing")
        
        
        Imageview.image?.draw(in: CGRect(x: 0, y: 0, width: Imageview.frame.size.width, height:Imageview.frame.size.height))
        
        
        
        context?.setLineWidth(brushSize)
        print(gray)
        context?.setStrokeColor(gray)
        
        
        
        context?.beginPath()
        
        context?.move(to: CGPoint(x: pointA.x - Imageview.frame.origin.x, y: pointA.y - Imageview.frame.origin
        .y))
        
        context?.addLine(to: CGPoint(x: pointB.x - Imageview.frame.origin.x, y: pointB.y - Imageview.frame.origin
            .y))
        
        context?.strokePath()
        
        
        
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        
        
        Imageview.image = newImage
        
        
        
        
    }
}





