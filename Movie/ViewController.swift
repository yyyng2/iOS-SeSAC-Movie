//
//  ViewController.swift
//  Movie
//
//  Created by Y on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var movieOutlet: [UIButton]!
    @IBOutlet weak var backPoster: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        designPreviewButton()
    }
    
    func designPreviewButton(){
        for item in movieOutlet{
            item.layer.cornerRadius = 50
            item.clipsToBounds = true
            item.layer.borderWidth = 1
        }
    }
    
    
    @IBAction func imageRandomClicked(_ sender: UIButton) {
        backPoster.image = UIImage(named: "movie\(Int.random(in: 0...3))")
    }
}

