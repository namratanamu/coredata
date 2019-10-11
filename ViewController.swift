//
//  ViewController.swift
//  mactest3
//
//  Created by Felix 05 on 04/10/19.
//  Copyright © 2019 felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
    var shop = ["D-Mart","Fayda Bazzar","Jai Bhawani","Bhavani Super Market","Mahavir Kirana Store","Ganesh Super Shop"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shop.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        
        cell.textLabel?.text = shop[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let next = storyboard?.instantiateViewController(withIdentifier: "nextViewController") as! nextViewController
        navigationController?.pushViewController(next, animated: true
        )
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBOutlet weak var tableview1: UITableView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

