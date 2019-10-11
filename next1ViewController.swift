//
//  next1ViewController.swift
//  mactest3
//
//  Created by Felix 05 on 04/10/19.
//  Copyright © 2019 felix. All rights reserved.
//

import UIKit

var allTaskNames = [String]()
var allTaskIds = [String]()

class next1ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTaskNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        
        cell.textLabel?.text = allTaskNames[indexPath.row]
        cell.detailTextLabel?.text = allTaskIds[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let selectQuery = "select G_Name, G_Rate from ShopTable"
        databaselib.shareObj.selectall(query: selectQuery)
        allTaskNames = databaselib.shareObj.G_Name
        allTaskIds = databaselib.shareObj.G_Rate
        tableview.reloadData()
        print(allTaskNames)
        print(allTaskIds)
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var tableview: UITableView!
    
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
