//
//  ViewController.swift
//  nearby-bles
//
//  Created by Upadhyay, Prayag on 12/11/19.
//  Copyright © 2019 nearby-bles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "nearby bles", message: "list", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }


}

