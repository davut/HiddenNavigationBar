//
//  FirstScreen.swift
//  HiddenNavigationBar
//
//  Created by Young Teacher on 19/06/2017.
//  Copyright © 2017 youngdev. All rights reserved.
//

import UIKit

class FirstScene: UITableViewController {
    
    var imagesArray = ["1","2","3"]
    var titlesArray = ["1","2","3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = titlesArray[indexPath.row]
        cell.imageView?.image = UIImage.init(named: imagesArray[indexPath.row])

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToSecondScene", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let selectedRow = tableView.indexPathForSelectedRow
//        let selectedTitle = titlesArray[(selectedRow?.row)!]
        let selectedImage = imagesArray[(selectedRow?.row)!]
        let destinationVC = segue.destination as! SecondScene
        destinationVC.imageFromFirstScene = selectedImage
        
        
    }
 

    

    
    
    
    
    

}
