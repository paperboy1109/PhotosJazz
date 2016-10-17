//
//  AddPhotoVC.swift
//  PhotosJazz
//
//  Created by Daniel J Janiak on 10/16/16.
//  Copyright © 2016 redwoodempiredev. All rights reserved.
//

import UIKit

class AddPhotoVC: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Actions
    
    @IBAction func addPhotoTapped(_ sender: AnyObject) {
        
        let imagePickerController = UIImagePickerController()
        
        imagePickerController.delegate = self
        imagePickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary
        imagePickerController.allowsEditing = false
        
        self.present(imagePickerController, animated: true, completion: nil)
        
        
    }
    

}

extension AddPhotoVC:  UINavigationControllerDelegate, UIImagePickerControllerDelegate  {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        /* Get the image that the user has chosen from the picker controller and display it*/
        if let newImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
            imageView.image = newImage
            
        } else {
            
            print("Failed to display the chosen image")
        }
        
        self.dismiss(animated: true, completion: nil)
    }



}
