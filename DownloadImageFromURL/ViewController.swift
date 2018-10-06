//
//  ViewController.swift
//  DownloadImageFromURL
//
//  Created by Apple on 06/10/18.
//  Copyright © 2018 DayPoster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    var urlKey = "https://homepages.cae.wisc.edu/~ece533/images/arctichare.png"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        
        if let url = URL(string: urlKey) {
            
            do {
                
                let data = try Data(contentsOf: url)
                self.image.image = UIImage(data: data)
            }catch let err {
                print("error: \(err.localizedDescription)")
            }
        }
    }
    
}

