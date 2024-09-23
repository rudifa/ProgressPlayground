//
//  ViewController.swift
//  ProgressPlayground
//
//  Created by Rudolf Farkas on 23.09.2024.
//

import ProgressHUD
import UIKit

class ViewController1: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        hello()

        ProgressHUD.animate("Please wait...", .ballVerticalBounce)
    }

    func hello() {
        let label = UILabel()
        label.text = "Hello Playground"
        label.sizeToFit()
        label.center = view.center
        view.addSubview(label)
    }
}
