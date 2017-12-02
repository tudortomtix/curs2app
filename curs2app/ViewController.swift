//
//  ViewController.swift
//  curs2app
//
//  Created by Tudor Fratila on 02/12/2017.
//  Copyright © 2017 Tudor Fratila. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func printHelloWorld(){
        print("Hello World")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
      //  printHelloWorld()
        showAlert()
   }
    
    
    func showAlert(){
        let alertView = UIAlertView(
            title: "Titlu de test",
            message: "Scriu un mesaj sa vad ca apare",
            delegate: nil,
            cancelButtonTitle: "Un fel de OK"
            )
        
        alertView.show()
    }
    
    func showAlertController(){
        let alertStyle = UIAlertControllerStyle.actionSheet
        let alertController = UIAlertController(
            title: "Info",
            message: "Hello World",
            preferredStyle: alertStyle
        )
        // my action style
        let actionStyle = UIAlertActionStyle.destructive
        // Ok button
        let action = UIAlertAction(
            title: "Ok",
            style: actionStyle,
            handler: nil
        )
        // add action to alert
        alertController.addAction(action)
        // show alert controller
        self.present(
            alertController,
            animated: true,
            completion: nil
            
        )
    }
}

