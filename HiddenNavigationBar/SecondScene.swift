//
//  ViewController.swift
//  HiddenNavigationBar
//
//  Created by Young Teacher on 19/06/2017.
//  Copyright © 2017 youngdev. All rights reserved.
//

import UIKit

class SecondScene: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var imageFromFirstScene = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
        navigationController?.navigationBar.shadowImage = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage.init(named: imageFromFirstScene)
        navigationController?.navigationBar.tintColor = UIColor.black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

