//
//  ViewController.swift
//  AppTheMemoryGame
//
//  Created by Shikha Patel on 6/23/20.
//  Copyright © 2020 Shikha Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var GifView: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
   
    }
    func gifLoad() {
        GifView.loadGif(name: "gifxcode")
    }
          

}

