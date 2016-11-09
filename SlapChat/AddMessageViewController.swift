//
//  AddMessageViewController.swift
//  SlapChat
//
//  Created by Jacqueline Minneman on 11/9/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddMessageViewController: UIViewController {
    
    var store = DataStore.sharedInstance

    @IBOutlet weak var textField: UITextField!
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        var newMessage = Message(context: store.persistentContainer.viewContext)
        newMessage.content = textField.text
        newMessage.createdAt = NSDate()
        store.saveContext()
        
        self.dismiss(animated: true, completion: nil)
        
        print("save pressed message = \(store.messages.count)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
