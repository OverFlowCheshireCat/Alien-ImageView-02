//
//  ViewController.swift
//  Alien ImageView 02
//
//  Created by dit03 on 2019. 3. 28..
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var countLbl: UILabel!
    
    var check = false
    var count = 1
    var timerM = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "frame1.png")
    }
    
    @IBAction func updateBtn(_ sender: Any) {
        if (!check) {
            if (count == 5) {
                check = true;
                count -= 1;
            } else {
                count += 1;
            }
        } else {
            if (count == 1) {
                check = false;
                count += 1;
            } else {
                count -= 1;
            }
        }
        
        imageView.image = UIImage(named: "frame" + String(count) + ".png")
        countLbl.text = String(count) + " 번 사진"
    }
    
    func autoChange() {
        if (!check) {
            if (count == 5) {
                check = true;
                count -= 1;
            } else {
                count += 1;
            }
        } else {
            if (count == 1) {
                check = false;
                count += 1;
            } else {
                count -= 1;
            }
        }
        
        imageView.image = UIImage(named: "frame" + String(count) + ".png")
        countLbl.text = String(count) + " 번 사진"
    }
    
    @IBAction func autoBtn(_ sender: Any) {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { timer in
            self.autoChange()
        })
    }
}
