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
   
    @IBAction func generalButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.caregiver.org/pilotIntegration/indexPersistent.html?uri=%2Fcaregivers-guide-understanding-dementia-behaviors")! as URL, options: [:], completionHandler: nil)
        
    }
    @IBAction func generalButton1(_ sender: Any) {
         UIApplication.shared.open(URL(string: "https://www.alz.org/alzheimers-dementia/diagnosis/medical_tests")! as URL, options: [:], completionHandler: nil)
        
    }
    
   @IBAction func generalButton2(_ sender: Any) {
         UIApplication.shared.open(URL(string: "https://www.alzheimer.mb.ca/wp-content/uploads/2013/09/2014-Dementia-Fall-Risk-Checklist-template.pdf")! as URL, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func generalButton3(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.hopkinsmedicine.org/neurology_neurosurgery/centers_clinics/memory_disorders/conditions/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func generalButton4(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.nia.nih.gov/health/bathing-dressing-and-grooming-alzheimers-caregiving-tips")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func option1(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=YFdZXwE6fRE")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func option2(_ sender: Any) {
         UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=inpok4MKVLM")! as URL, options: [:], completionHandler: nil)
        
    }
    
}
          



