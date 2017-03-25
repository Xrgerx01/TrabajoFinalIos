//
//  ViewController.swift
//  CityTour
//
//  Created by ROGER ALEX. CHIROQUE RAMIREZ on 10/10/16.
//  Copyright © 2016 ROGER ALEX. CHIROQUE RAMIREZ. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var menuTableView: UITableView!
    

    var menuLabels:[String] = [
        "Mis Rutas", "Escaner", "Eventos", "Acerca de..."]
    var menuImages = [
        UIImage(named:"ic_menu_routes"), UIImage(named:"ic_menu_qr"), UIImage(named:"ic_menu_events"), UIImage(named:"ic_menu_about")]
    var menuIds:[String] = [
        "routes-vc", "scan-vc", "events-vc", "about-vc"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuLabels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
         let cell = tableView.dequeueReusableCell(withIdentifier: "menu-cell", for: indexPath) as! MenuTableViewCell
        
        cell.menuLbl?.text = menuLabels[indexPath.row]
        cell.menuImg?.image = menuImages[indexPath.row]
        
        return cell
        
 
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vcName = menuIds[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(viewController!, animated: true)
 
    }


}

