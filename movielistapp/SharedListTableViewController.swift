//
//  SharedListTableViewController.swift
//  movielistapp
//
//  Created by user172317 on 10/22/20.
//  Copyright © 2020 Kalev Aguirre. All rights reserved.
//
import UIKit

class SharedListTableViewController: UITableViewController {
    let sharedMovies = ["Narnia", "Lord of the Rings","Tenet","Suspiria","Shrek", "Shrek 2", "Shrek Tercero"];
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sharedMovies.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "sharedListCell")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "sharedListCell", for: indexPath) as UITableViewCell
        
        cell.textLabel!.text = sharedMovies[indexPath.row]
        return cell;
    }
}
