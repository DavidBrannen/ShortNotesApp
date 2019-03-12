//
//  ViewController.swift
//  Short Notes App
//
//  Created by MAC on 3/11/19.
//  Copyright © 2019 MAC. All rights reserved.
/* Using a mock, create a basic app with a button, a textField, and a tableView. When a user taps the button, the contents of the textField should be added to the tableView.
*/

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var noteLaabel: UITextField!
    var myData: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func addButton(_ sender: Any) {
        myData.append(noteLaabel.text ?? " ")
        table.reloadData()
        noteLaabel.text = ""
    }
    
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //get, prepare and return cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = myData[indexPath.row]
        return cell
    }
}
