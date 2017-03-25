//
//  EventsTableViewController.swift
//  City Tour
//
//  Created by ROGER ALEX. CHIROQUE RAMIREZ on 24/10/16.
//  Copyright © 2016 ROGER ALEX. CHIROQUE RAMIREZ. All rights reserved.
//

import UIKit

class EventsTableViewController: UITableViewController {
    
    
    var eventsImages = [
        UIImage(named:"img_eventos_cuentos"), UIImage(named:"img_eventos_cocina"), UIImage(named:"img_eventos_cine")]
    
    var eventsNameLabels:[String] = [
        "Festival de Cuentería MIstura", "Aniversario de la gastronomia Peruana", "(10vo Festival de Msitura)"]
    
    var eventsPlaceLabels:[String] = [
        "Teatro Prandello", "Escuela Taller Lima", "Teatro Marsano"]
    
    var eventsDateLabels:[String] = [
        "Octubre 24 al 28 / 2017", "Octubre 27 y 28 / 2017", "Noviembre 8 al 12 / 2017"]
    
    var eventsAddressLabels:[String] = [
        "Calle 7, Cra 3", "Calle 4 # 9-12", "Calle 3 # 6-81"]

    

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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return eventsNameLabels.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "events-cell", for: indexPath) as! EventsTableViewCell
        
        cell.imgEvent.image = eventsImages[indexPath.row]
        cell.lblNameEvent.text = eventsNameLabels[indexPath.row]
        cell.lblPlaceEvent.text = eventsPlaceLabels[indexPath.row]
        cell.lblDateEvent.text = eventsDateLabels[indexPath.row]
        cell.lblAddressEvent.text = eventsAddressLabels[indexPath.row]
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
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
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
