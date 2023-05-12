//
//  ViewController.swift
//  BaiTapUIBuoi9
//
//  Created by Trương Duy Tân on 10/05/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgBall: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        var radius = 50;
        // Do any additional setup after loading the view.
        UIView.animate(withDuration: 3, animations: {
            self.imgBall.frame.origin.y = self.view.frame.maxY - CGFloat(radius)*2}) { _ in
                    UIView.animate(withDuration: 3, animations: {
                        self.imgBall.frame.origin.x = self.view.frame.maxX - CGFloat(radius*2)
                    }) { _ in
                        UIView.animate(withDuration: 3, animations: {
                            self.imgBall.frame.origin.y = self.view.frame.minY
                        }) { _ in
                            UIView.animate(withDuration: 3) {
                                self.imgBall.frame.origin.x = self.view.frame.minX
                            }
                        }
                    }
            }
        }
    }

