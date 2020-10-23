//
//  SharedListTableViewController.swift
//  movielistapp
//
//  Created by user172317 on 10/22/20.
//  Copyright © 2020 Kalev Aguirre. All rights reserved.
//
import UIKit

class SharedMovieListsTableViewController: UITableViewController {

   let mySharedLists = ["Jackie's List", "Bruno's List","Americo's List","User124's List"];
            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySharedLists.count;
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "sharedCell")
            
        let cell = tableView.dequeueReusableCell(withIdentifier: "sharedCell", for: indexPath) as UITableViewCell
            
        cell.textLabel!.text = mySharedLists[indexPath.row]
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator;
        return cell;
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let sharedListController = storyBoard.instantiateViewController(withIdentifier: "SharedListTableViewController")
    //sharedListController.modalPresentationStyle = .fullScreen
        
        self.present(sharedListController, animated:true, completion:nil)
    }
}


