//
//  ViewController.swift
//  CarsDemo
//
//  Created by Wasim Alatrash on 10/13/21.
//

import UIKit

class ViewController: UIViewController {
    let provider = DataProvider()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func showAlertTapped(_ sender: Any) {
        let alert = UIAlertController(title: nil, message: "message", preferredStyle: .alert)
        present(alert, animated: true)
    }
}

