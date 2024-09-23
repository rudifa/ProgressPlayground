//
//  ViewController.swift
//  ProgressPlayground
//
//  Created by Rudolf Farkas on 23.09.2024.
//

//
//  ViewController.swift
//  iProgressHUDDemo
//
//  Created by Saiful I. Wicaksana on 12/01/18.
//  Copyright © 2018 icaksama. All rights reserved.
//

import iProgressHUD
import UIKit

class ViewController: UIViewController, iProgressHUDDelegete {
    @IBOutlet var view3: UIView!
    @IBOutlet var view2: UIView!
    @IBOutlet var view1: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
//        view1.isHidden = true
//        view2.isHidden = true
//        view3.isHidden = true

        hello()
    }

    override func viewDidAppear(_: Bool) {
//        iProgressHUD.sharedInstance().attachProgress(toView: self.view)
//        self.view.showProgress()

        let iprogress = iProgressHUD()
        iprogress.delegete = self
        iprogress.iprogressStyle = .horizontal
        iprogress.indicatorStyle = .orbit
        iprogress.isShowModal = false
        iprogress.boxSize = 50

        iprogress.attachProgress(toViews: view) // view1, view2, view3)
        view.showProgress()
//        view1.showProgress()
//        view2.showProgress()
//        view3.showProgress()
    }

    func onShow(view: UIView) {
        print("onShow")
    }

    func onDismiss(view: UIView) {
        print("onDismiss")
    }

    func onTouch(view: UIView) {
        print("onTouch")
    }

    func hello() {
        let label = UILabel()
        label.text = "Hello Playground"
        label.sizeToFit()
        label.center = view.center
        view.addSubview(label)
    }
}
