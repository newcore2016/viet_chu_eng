//
//  MainMenuVC.swift
//  viet_chu
//
//  Created by Tri on 11/17/16.
//  Copyright © 2016 efode. All rights reserved.
//

import UIKit

class MainMenuVC: UIViewController {
    
    @IBOutlet weak var numberBtn: UIButton!
    
    @IBOutlet weak var alphebetLowBtn: UIButton!
    
    @IBOutlet weak var alphabetUpBtn: UIButton!
    
    var selectedTable = Table.alphabetLower
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func numberBtnPressed(_ sender: Any) {
        selectedTable = Table.number
        self.performSegue(withIdentifier: "MenuSegue", sender: self)
    }
    
    @IBAction func alphabetLowBtnPressed(_ sender: Any) {
        selectedTable = Table.alphabetLower
        self.performSegue(withIdentifier: "MenuSegue", sender: self)
    }
    
    @IBAction func alphebetUpBtnPressed(_ sender: Any) {
        selectedTable = Table.alphabetUpper
        self.performSegue(withIdentifier: "MenuSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? MenuViewController {
            destination.selectedTable = self.selectedTable
        }    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
