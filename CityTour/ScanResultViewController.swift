//
//  ScanResultViewController.swift
//  City Tour
//
//  Created by ROGER ALEX. CHIROQUE RAMIREZ on 21/10/16.
//  Copyright © 2016 ROGER ALEX. CHIROQUE RAMIREZ. All rights reserved.
//

import UIKit

class ScanResultViewController: UIViewController {
    
    
    @IBOutlet weak var txtScannedUrl: UITextField!
    @IBOutlet weak var webScannedUrl: UIWebView!

    var urlFromQR = "https://www.coursera.org"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        txtScannedUrl?.text = urlFromQR
        
        print("Url received: \(urlFromQR)")
        
        let url = URL(string: urlFromQR)
        let qrWebRequest = URLRequest(url: url!)
        webScannedUrl.loadRequest(qrWebRequest)
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
