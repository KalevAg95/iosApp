//
//  SharedListTableViewController.swift
//  movielistapp
//
//  Created by user172317 on 10/22/20.
//  Copyright © 2020 Kalev Aguirre. All rights reserved.
//
import UIKit

class MyListTableViewController: UITableViewController {
    let myMovies = ["Narnia", "Lord of the Rings","Tenet","Suspiria","Shrek", "Shrek 2", "Shrek Tercero"];
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myMovies.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "myListCell")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myListCell", for: indexPath) as UITableViewCell
        
        cell.textLabel!.text = myMovies[indexPath.row]
        return cell;
    }
}
