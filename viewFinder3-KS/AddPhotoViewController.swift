//
//  AddPhotoViewController.swift
//  viewFinder3-KS
//
//  Created by Apple on 7/29/19.
//  Copyright © 2019 sabyatha. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController() //this is not of type ControllerDelegate, but just of Controller
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func cameraTask(_ sender: Any) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func librayTask(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
   
    @IBAction func albums(_ sender: Any) {
        imagePicker.sourceType = .savedPhotosAlbum
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBOutlet var showImage: UIImageView!

    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var newImageView: UIImageView!
    
    internal func imagePickerController(_ _picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            newImageView.image = selectedImage
            imagePicker.dismiss(animated: true, completion: nil)
        }
    }
}
