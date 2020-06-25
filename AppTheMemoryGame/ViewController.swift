//
//  ViewController.swift
//  AppTheMemoryGame
//
//  Created by Shikha Patel on 6/23/20.
//  Copyright © 2020 Shikha Patel. All rights reserved.
//

import UIKit
import ApiAI
import AVFoundation

class ViewController: UIViewController {

   //some speech stuff, might want to get rid of it later
    let speechSynthesizer = AVSpeechSynthesizer()
    
   func speechAndText(text: String) {
       let speechUtterance = AVSpeechUtterance(string: text)
       speechSynthesizer.speak(speechUtterance)
       UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseInOut, animations: {
           self.chipResponse.text = text
       }, completion: nil)
   }
    
    @IBOutlet weak var GifView: UIImageView!

    @IBOutlet weak var chipResponse: UILabel!
    @IBOutlet weak var messageField: UITextField!
    @IBAction func sendMessage(_ sender: Any) {
        let request = ApiAI.shared().textRequest()
        
        if let text = self.messageField.text, text != "" {
            request?.query = text
        } else {
            return
        }
        
        request?.setMappedCompletionBlockSuccess({ (request, response) in
            let response = response as! AIResponse
            if let textResponse = response.result.fulfillment.speech {
                self.speechAndText(text: textResponse)
            }
        }, failure: { (request, error) in
            print(error!)
        })
        
        ApiAI.shared().enqueue(request)
        messageField.text = ""
    }
    
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
    

            
          //THIS IS OUR CODE FOR THE CAMERA JOURNAL


       //   class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

weak var displayImage: UIImageView!
              
              var imagePicker =  UIImagePickerController()
              
              //It may need to be sender : any

          

    @IBAction func takePictureTapped(_ sender: Any) {imagePicker.sourceType = .camera
        
          present( imagePicker, animated : true, completion : nil)
        
    }
   
        
    @IBAction func photoLibraryTapped(_ sender: Any) { imagePicker.sourceType = .photoLibrary
        
         present( imagePicker, animated : true, completion : nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage ] as? UIImage {displayImage.image = selectedImage
    }

        imagePicker.dismiss(animated : true, completion : nil)
}
    

    
    // CHATBOT CODE


}
