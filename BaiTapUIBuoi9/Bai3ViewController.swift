//
//  Bai3ViewController.swift
//  BaiTapUIBuoi9
//
//  Created by Trương Duy Tân on 12/05/2023.
//

import UIKit

class Bai3ViewController: UIViewController {

    @IBOutlet weak var imgBallZigzac: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var radius:CGFloat = 50
        imgBallZigzac.frame.origin.x = self.view.frame.minX
        imgBallZigzac.frame.origin.y = self.view.frame.minY
        UIView.animate(withDuration: 3, animations: {
            self.imgBallZigzac.frame.origin.x = self.view.frame.maxX - radius * 2 - 25
        }) { _ in
            UIView.animate(withDuration: 3, animations: {
                self.imgBallZigzac.frame.origin.y = 200
            }) { _ in
                UIView.animate(withDuration: 3, animations: {
                    self.imgBallZigzac.frame.origin.x = self.view.frame.minX
                }) { _ in
                    UIView.animate(withDuration: 3, animations: {
                        self.imgBallZigzac.frame.origin.y = 400
                    }) { _ in
                        UIView.animate(withDuration: 3, animations: {
                            self.imgBallZigzac.frame.origin.x = self.view.frame.maxX - radius * 2 - 25
                        }) { _ in
                            UIView.animate(withDuration: 3, animations: {
                                self.imgBallZigzac.frame.origin.y = 600
                            }) { _ in
                                UIView.animate(withDuration: 3, animations: {
                                    self.imgBallZigzac.frame.origin.x = self.view.frame.minX
                                }) { _ in
                                    UIView.animate(withDuration: 3, animations: {
                                        self.imgBallZigzac.frame.origin.y = self.view.frame.maxY - radius * 2 - 25
                                    }) { _ in
                                        UIView.animate(withDuration: 3) {
                                            self.imgBallZigzac.frame.origin.x = self.view.frame.maxX - radius * 2 - 25
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    

   

}
