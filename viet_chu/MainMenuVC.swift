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
        let themeView = UIImageView(frame: self.view.frame)
        themeView.image = UIImage(named: "theme")
        self.view.insertSubview(themeView, at: 0)
        super.viewDidLoad()
        
        
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        print("willAppear")
////        numberBtn.frame.size = CGSize(width: self.view.frame.width , height: self.view.frame.height / 3)
////        alphebetLowBtn.frame.size = CGSize(width: self.view.frame.width , height: self.view.frame.height / 3)
////        alphabetUpBtn.frame.size = CGSize(width: self.view.frame.width , height: self.view.frame.height / 3)
//    }
    
    override func viewDidAppear(_ animated: Bool) {
        alphebetLowBtn.frame.size = CGSize(width: self.view.frame.width / 4 , height: self.view.frame.height / 3)
        alphebetLowBtn.center = CGPoint(x: self.view.frame.width / 3 - 20, y: self.view.frame.height / 3 - 20)
        alphabetUpBtn.frame.size = CGSize(width: self.view.frame.width / 4 , height: self.view.frame.height / 3)
        alphabetUpBtn.center = CGPoint(x: self.view.frame.width / 3 * 2 + 20, y: self.view.frame.height / 3 - 20)
        numberBtn.frame.size = CGSize(width: self.view.frame.width / 4 , height: self.view.frame.height / 3)
        numberBtn.center = CGPoint(x: self.view.frame.width / 3 - 20, y: self.view.frame.height / 3 * 2)
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
