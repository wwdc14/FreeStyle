//
//  ViewController.swift
//  FresStyle
//
//  Created by FD on 2019/3/2.
//  Copyright © 2019 FD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        nameLabel.attributedText = "what's your name".fs
            .backgoundColor(.cyan)
            .foregroundColor(.red)
            .render()
    }
}
