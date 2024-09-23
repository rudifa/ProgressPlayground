//
//  ViewController.swift
//  ProgressPlayground
//
//  Created by Rudolf Farkas on 23.09.2024.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        hello()
    }

    func hello() {
        let label = UILabel()
        label.text = "Hello Playground"
        label.sizeToFit()
        label.center = view.center
        view.addSubview(label)
    }
}
