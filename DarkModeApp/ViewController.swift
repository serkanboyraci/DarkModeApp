//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Ali serkan Boyracı  on 3.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //4
        overrideUserInterfaceStyle = .light // you can use only dark or light mode in your VC, nobody can change it. only this VC.
        
        
        //1
        // Do any additional setup after loading the view.
        
        /*/
        // we couldnt changes while using app, because viewdidload calls only one time.
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
            
        } else {
            changeButton.tintColor = UIColor.blue
            
        } */
    }
    
    //2
    override func viewWillAppear(_ animated: Bool) {
        
        // again while using app we couldnt changes in first sight, after changing VC, we can see the changes.
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
            
        } else {
            changeButton.tintColor = UIColor.blue
            
        }
    }
    
    //3
    // using app, it changes dark/light mode easily.
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
            
        } else {
            changeButton.tintColor = UIColor.blue
            
        }
    }
    
    //5 you can define dark /light mode all your app, with Info.plist
    // add User Interface Style = "Dark, Light"
    // I cant find this in Info.plist, maybe IOS16 not ıncluded with this.
    
        
    
        


}
    

