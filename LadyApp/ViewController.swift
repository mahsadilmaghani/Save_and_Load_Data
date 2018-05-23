//
//  ViewController.swift
//  LadyApp
//
//  Created by Mahsa Dilmaghani on 19/05/2018.
//  Copyright © 2018 LadyApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func saveMyDetails(_ sender: UIButton) {
        let saveMyDetailsStoryboard = UIStoryboard(name: "SaveMyDetails", bundle: nil)
        let saveMyDetailsViewController = saveMyDetailsStoryboard.instantiateViewController(withIdentifier: "SaveMyDetails")
        
        if let navigationController = self.navigationController{
            navigationController.pushViewController(saveMyDetailsViewController, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

