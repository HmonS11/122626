//
//  ViewController.swift
//  SPMEx
//
//  Created by runnysun on 2022/11/03.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {

    @IBOutlet weak var gifViewer: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actGetImage(_ sender: Any) {
        let strURL = "https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F4945590%3Ftimestamp%3D20220925174604"
        let url = URL(string: strURL)
        let image = UIImage(systemName: "heart.fill")
        imageView.sd_setImage(with: URL(string: strURL), placeholderImage: image)
        
    }
    
    @IBAction func actGetGif(_ sender: Any) {
        let gifImage = SDAnimatedImage(named: "test.gif")
        gifViewer.image = gifImage
    }
}

