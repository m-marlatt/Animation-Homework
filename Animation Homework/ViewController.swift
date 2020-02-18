//
//  ViewController.swift
//  Animation Homework
//
//  Created by Maxwell Marlatt on 2/17/20.
//  Copyright © 2020 Maxwell Marlatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var aniImage: UIImageView!
    @IBOutlet weak var backImg: UIImageView!
    @IBOutlet weak var speedSlider: UISlider!
    
    
    
    
    @IBAction func strtButt(_ sender: Any) {
        if (aniImage.isAnimating)
        {
            aniImage.stopAnimating()
        }else{
            aniImage.startAnimating()
        }
    }
    
    @IBAction func toggleButton(_ sender: Any) {
        if (backImg.isHidden == true)
        {
            backImg.isHidden = false
        }else{
            backImg.isHidden = true
        }
    }
    @IBAction func aniSpeed(_ sender: Any) {
        aniImage.animationDuration = TimeInterval(1.0-speedSlider.value)
    }
    
        

        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fishAni: [UIImage] = [
            UIImage(named:"frame2")!,
            UIImage(named:"frame3")!,
            UIImage(named:"frame4")!,
            UIImage(named:"frame5")!,
            UIImage(named:"frame6")!,
            UIImage(named:"frame7")!,
            UIImage(named:"frame8")!,
            UIImage(named:"frame9")!,
            UIImage(named:"frame10")!,
            UIImage(named:"frame11")!,
            UIImage(named:"frame12")!,
         ]
        aniImage.animationImages = fishAni
            aniImage.animationDuration=2.5
            
        
        
        
        
        
        
        
        
        
    }


}

