//
//  ViewController.swift
//  JestAlgılayıcılar
//
//  Created by aydoğan pederli on 28.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    var ceza = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(chancePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    @objc func chancePic(){
        if ceza==true{
            imageView.image=UIImage (named: "ceza")
            lblName.text="ceza"
            ceza=false
        }else{
            imageView.image = UIImage (named: "sagopa")
            lblName.text = "sagopa"
            ceza=true
        }
    }

}

