//
//  ViewController.swift
//  tabelView testing
//
//  Created by elva wang on 11/2/17.
//  Copyright © 2017 elva wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tasktTextView: UITextField!

    @IBAction func beastButtonPressed(_ sender: UIButton) {
        if let x = tasktTextView.text {
            arr.append(x)
            tableView.reloadData()
        }
    }
    var arr =  ["hi","ho", "hum"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        //   this line mean the tableView should ask the viewConroller all the questions in extension
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->Int {
        return arr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }

}







//
