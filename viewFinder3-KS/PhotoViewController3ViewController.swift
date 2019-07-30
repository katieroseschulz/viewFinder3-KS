//
//  PhotoViewController3ViewController.swift
//  viewFinder3-KS
//
//  Created by Apple on 7/30/19.
//  Copyright © 2019 sabyatha. All rights reserved.
//

import UIKit

class PhotoViewController3ViewController: UIViewController {

@IBOutlet weak var image3: UIImageView!
    
    var photo : Photos? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        if let realPhoto = photo {
            title = realPhoto.caption
            if let cellPhotoImageData = realPhoto.imageData {
                if let cellPhotoImage = UIImage(data : cellPhotoImageData) {
                    image3.image = cellPhotoImage
                }
            }

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

   
    
}
}
