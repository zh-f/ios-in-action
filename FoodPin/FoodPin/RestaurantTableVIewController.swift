//
//  RestaurantTableVIewController.swift
//  FoodPin
//
//  Created by Fan Zhang on 8/4/15.
//  Copyright (c) 2015 ZH.F. All rights reserved.
//

import UIKit

class RestaurantTableVIewController: UITableViewController {
    
    var restaurantNamesCN = ["仿膳饭庄","全聚德","东来顺","同和居","砂锅居","泰丰居","万福居","阳春居","东兴居","广和居","福兴居","丰泽园","鸿宾楼"]
    var restaurantNames = [
        "Cafe Deadend","Homei","Teakha","Cafe Loisl","Petite Oyster","ForKee Restaurant","Po's Atelier",
        "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif",
        "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional",
        "Barrafina", "Donostia", "Royal Oak", "Thai Cafe"
    ]
    var restaurantImages = [
        "cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg",
        "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg",
        "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg",
        "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg",
        "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "thaicafe.jpg"
    ]
    var restaurantLocations = [
        "Hong Kong", "HongKong", "Hong Kong", "Hong Kong", "Hong Kong",
        "HongKong", "Hong Kong", "Sydney", "Sydney", "Sydney","New York", "New York",
        "New York", "New York", "NewYork", "New York", "New York", "London",
        "London","London", "London"
    ]
    var restaurantTypes = [
        "Coffee & Tea Shop","Cafe", "Tea House", "Austrian / Causual Drink",
        "French", "Bakery", "Bakery", "Chocolate", "Cafe","American / Seafood",
        "American", "American","Breakfast & Brunch", "Coffee & Tea","Coffee &Tea",
        "Latin American", "Spanish", "Spanish","Spanish", "British", "Thai"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.restaurantNames.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! CustomTableViewCell

//         Configure the cell...want to show traditional Beijing restaurants? Remember to change self.restaurantNamesCN.count above
//        cell.textLabel?.text = restaurantNamesCN[indexPath.row]
        cell.nameLabel.text = restaurantNames[indexPath.row]
        cell.locationLable.text = restaurantLocations[indexPath.row]
        cell.typeLable.text = restaurantTypes[indexPath.row]
        cell.thumbnailImageView.image = UIImage(named: restaurantImages[indexPath.row])
//        cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.frame.size.width/2;
        cell.thumbnailImageView.layer.cornerRadius = 10.0
        cell.thumbnailImageView.clipsToBounds = true
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
