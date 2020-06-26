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


    @IBAction func physical1(_ sender: Any) {
            UIApplication.shared.open(URL(string: "https://www.alzheimers.org.uk/about-dementia/symptoms-and-diagnosis/symptoms/tips-for-communicating-dementia")! as URL, options: [:], completionHandler: nil)
    }
    //   class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBAction func p2(_ sender: Any) {
        
          UIApplication.shared.open(URL(string: "https://www.alzheimers.org.uk/about-dementia/symptoms-and-diagnosis/symptoms/tips-for-communicating-dementia")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func p3(_ sender: Any) {
          UIApplication.shared.open(URL(string: "https://www.alzheimers.org.uk/about-dementia/symptoms-and-diagnosis/symptoms/tips-for-communicating-dementia")! as URL, options: [:], completionHandler: nil)
        
    }
    @IBAction func p4(_ sender: Any) {
          UIApplication.shared.open(URL(string: "https://www.alzheimers.org.uk/about-dementia/symptoms-and-diagnosis/symptoms/tips-for-communicating-dementia")! as URL, options: [:], completionHandler: nil)
        
    }
    @IBAction func p5(_ sender: Any) {
        
          UIApplication.shared.open(URL(string: "https://www.alzheimers.org.uk/about-dementia/symptoms-and-diagnosis/symptoms/tips-for-communicating-dementia")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func o1(_ sender: Any) {
         UIApplication.shared.open(URL(string: "https://www.alz.org/help-support/resources/kids-teens/50-activities")! as URL, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func o2(_ sender: Any) {
         UIApplication.shared.open(URL(string: "https://www.alz.org/help-support/resources/kids-teens/50-activities")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func o3(_ sender: Any) {
         UIApplication.shared.open(URL(string: "https://www.alz.org/help-support/resources/kids-teens/50-activities")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func o4(_ sender: Any) {
         UIApplication.shared.open(URL(string: "https://www.alz.org/help-support/resources/kids-teens/50-activities")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func o5(_ sender: Any) {
         UIApplication.shared.open(URL(string: "https://www.alz.org/help-support/resources/kids-teens/50-activities")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func m1(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.alz.org/help-support/resources/kids-teens/50-activities")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func m2(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.alz.org/help-support/resources/kids-teens/50-activities")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func m3(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.alz.org/help-support/resources/kids-teens/50-activities")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func m4(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.alz.org/help-support/resources/kids-teens/50-activities")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func m5(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.alz.org/help-support/resources/kids-teens/50-activities")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func dif1(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.amazon.com/GuruNanda-Plug-Essential-Diffuser-Upgraded/dp/B0855HQMH1/ref=sr_1_28?dchild=1&keywords=Small+Essential+Oil+Diffusers+Under+20+Dollars&qid=1593022219&sr=8-28")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func dif2(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.amazon.com/Ultimate-Aromatherapy-Ultrasonic-Therapeutic-Essential/dp/B07YVJ7S8C/ref=sr_1_4_sspa?dchild=1&keywords=diffuser&qid=1593014780&sr=8-4-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExNjBNQ05JSE5FN003JmVuY3J5cHRlZElkPUExMDQ2NjM2SlNNVzhHUzZPRTNYJmVuY3J5cHRlZEFkSWQ9QTA3OTEzMTQxMzcwNkYxMUk1Wlk5JndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func dif3(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://shop-links.co/1703265330536168390")! as URL, options: [:], completionHandler: nil)
    }
    weak var displayImage: UIImageView!
              
              var imagePicker =  UIImagePickerController()
              
              //It may need to be sender : any

    @IBAction func blank1(_ sender: Any) {
         UIApplication.shared.open(URL(string: "https://www.amazon.com/ZonLi-Weighted-Blanket-Cooling-180-220/dp/B075W94KB3/ref=sr_1_3?dchild=1&keywords=zero+gravity+blanket&qid=1593097462&sr=8-3")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func blank2(_ sender: Any) {
         UIApplication.shared.open(URL(string: "https://www.amazon.com/YnM-Cooling-Weighted-Blanket-Natural/dp/B07C18T8DH/ref=sxin_9?ascsubtag=amzn1.osa.79c30813-bbaf-4c08-8b0d-747483b1dc92.ATVPDKIKX0DER.en_US&creativeASIN=B07C18T8DH&cv_ct_cx=weighted+blanket&cv_ct_id=amzn1.osa.79c30813-bbaf-4c08-8b0d-747483b1dc92.ATVPDKIKX0DER.en_US&cv_ct_pg=search&cv_ct_wn=osp-single-source-pr&dchild=1&keywords=weighted+blanket&linkCode=oas&pd_rd_i=B07C18T8DH&pd_rd_r=6e0c3742-35cf-4d9d-bbce-3f5bb819dbac&pd_rd_w=UBUbt&pd_rd_wg=BDJYl&pf_rd_p=9ebd9ae2-bfc3-4cf2-a615-92a580f06e16&pf_rd_r=X70RFGA2HR432AWPTGPD&qid=1593023295&sr=1-2-8721a5c9-6336-4af6-a717-e9b9e6c2f75f&tag=askmencontent-20")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func blank3(_ sender: Any) {
         UIApplication.shared.open(URL(string: "https://www.amazon.com/Quility-Premium-Weighted-Removable-Individual/dp/B07C1PBDLX/ref=sr_1_12?dchild=1&keywords=weighted+blanket&qid=1593023295&sr=8-12")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func hea1(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.amazon.com/Mpow-Bluetooth-Headphones-Wireless-Memory-Protein/dp/B01NAJGGA2/ref=sr_1_8?dchild=1&keywords=wireless+headphones&qid=1593110653&sr=8-8")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func hea2(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.amazon.com/Cancelling-Headphones-Bluetooth-Microphone-Comfortable/dp/B019U00D7K/ref=sr_1_2_sspa?dchild=1&keywords=wireless+headphones&qid=1593110808&refinements=p_72%3A2661618011&rnid=2661617011&sr=8-2-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzVFNIVlE0SFZUVEMyJmVuY3J5cHRlZElkPUEwNDYwMjQ4VkxNSVFOWjYzSUdFJmVuY3J5cHRlZEFkSWQ9QTAwNzgyMzE2TjNSVzk1NjNSUUUmd2lkZ2V0TmFtZT1zcF9hdGYmYWN0aW9uPWNsaWNrUmVkaXJlY3QmZG9Ob3RMb2dDbGljaz10cnVl")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func hea3(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.amazon.com/Beats-Dr-Dre-Headphones-Refurbished/dp/B075NR47FN/ref=sr_1_1?crid=3U5VHR2PIU5FN&dchild=1&keywords=beats+headphones&qid=1593110999&refinements=p_89%3ABeats%2Cp_n_feature_two_browse-bin%3A509316&rnid=2266979011&s=aht&sprefix=beats+%2Caps%2C188&sr=1-1")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func fid1(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.amazon.com/Coogam-Teasers-Intelligence-Colorful-Educational/dp/B07GF9421C/ref=sr_1_25?crid=3LB236XBYCJJ3&dchild=1&keywords=elderly+fidget+toys&qid=1593110106&sprefix=fidget+toys+eld%2Caps%2C170&sr=8-25")! as URL, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func fid3(_ sender: Any) {
         UIApplication.shared.open(URL(string: "https://www.amazon.com/Durable-TEXTURED-Stretchy-String-Sensory/dp/B07S1L7NVB/ref=sr_1_2_sspa?dchild=1&keywords=fidget+noodle&qid=1593110493&sr=8-2-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUE3U0pSODFBMDlRVzYmZW5jcnlwdGVkSWQ9QTA1MDQ5NTk3UzBFRFczSVJPTzUmZW5jcnlwdGVkQWRJZD1BMDk5MTUzODFCTEJITkMxTDVZOVkmd2lkZ2V0TmFtZT1zcF9hdGYmYWN0aW9uPWNsaWNrUmVkaXJlY3QmZG9Ob3RMb2dDbGljaz10cnVl")! as URL, options: [:], completionHandler: nil)
        
    }
    @IBAction func fid2(_ sender: Any) {
         UIApplication.shared.open(URL(string: "https://www.amazon.com/TwiddleClassic-Therapy-Aid-Sensory-Alzheimers/dp/B009CR3JUK/ref=sr_1_16?dchild=1&keywords=fidget+blanket&qid=1593109938&sr=8-16")! as URL, options: [:], completionHandler: nil)
    }
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
