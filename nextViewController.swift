//
//  nextViewController.swift
//  mactest3
//
//  Created by Felix 05 on 04/10/19.
//  Copyright © 2019 felix. All rights reserved.
//

import UIKit

class nextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var textname1: UITextField!
    
    
    @IBOutlet weak var textname2: UITextField!
    
    @IBAction func insertitem(_ sender: UIButton) {
   
        
        let insertQuery = "insert into ShopTable(G_Name, G_Rate) values ('\(textname1.text!)','\(textname2.text!)')"
        let issuccess = databaselib.shareObj.executeQuery(query:insertQuery )
        if issuccess
        {
            print("insert success")
        }
        else
        {
            print("insert failed")
        }
    }
    
    @IBAction func show(_ sender: UIButton) {
    
    
   
        let next = storyboard?.instantiateViewController(withIdentifier: "next1ViewController") as! next1ViewController
        navigationController?.pushViewController(next, animated: true)
        
        
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
