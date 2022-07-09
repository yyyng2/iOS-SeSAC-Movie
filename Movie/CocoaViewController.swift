//
//  CocoaViewController.swift
//  Movie
//
//  Created by Y on 2022/07/05.
//

import UIKit

class CocoaViewController: UIViewController {
    //Interface Builder Outlet
    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    override func viewDidLoad() {
        //뷰컨트롤러 생명주기 종류 중 하나
        //사용자에게 화면이 보이기 직전에 실행되는 코드
        super.viewDidLoad()
        bannerImageView.image = UIImage(named: "movie\(Int.random(in: 1...3))")
        bannerImageView.layer.cornerRadius = 10
        bannerImageView.layer.borderWidth = 5
        bannerImageView.layer.borderColor = UIColor.blue.cgColor
        
        movieTitleLabel.text = "암살"
        movieTitleLabel.backgroundColor = UIColor.yellow
        movieTitleLabel.textColor = UIColor.red
        movieTitleLabel.font = UIFont.boldSystemFont(ofSize: 30)

    }
    
    
    @IBAction func resultButtonClicked(_ sender: UIButton) {
        
        bannerImageView.image = UIImage(named: "movie\(Int.random(in: 1...3))")
        //touch up inside
        
    }
    

}
