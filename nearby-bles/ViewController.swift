//
//  ViewController.swift
//  nearby-bles
//
//  Created by Upd, Prayag on 12/11/19.
//  Copyright © 2019 nearby-bles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var latitude: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        latitude = UILabel()
        latitude.text = "1234"
        latitude.font = UIFont.systemFont(ofSize: 18)
        latitude.sizeToFit()
        latitude.center = CGPoint(x: 50, y: 60)
        view.addSubview(latitude)
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "nearby bles", message: "list", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }


}

