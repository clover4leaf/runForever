//
//  FirstPlayViewController.swift
//  RunForever
//
//  Created by Kirill on 1/14/19.
//  Copyright © 2019 Kirill. All rights reserved.
//

import UIKit

class FirstPlayViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet private weak var slideView: UIView!
    @IBOutlet private weak var jumpView: UIView!

    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.bringSubviewToFront(self.view)
        self.view.backgroundColor = UIColor.clear

        UIView.animate(withDuration: 2.0, animations: {
            self.slideView.alpha = 0.0
            self.jumpView.alpha = 0.0
        }) { (_) in
            self.view.removeFromSuperview()
        }
    }
}
