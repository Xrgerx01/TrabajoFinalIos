//
//  ScanViewController.swift
//  City Tour
//
//  Created by ROGER ALEX. CHIROQUE RAMIREZ on 21/10/16.
//  Copyright © 2016 ROGER ALEX. CHIROQUE RAMIREZ. All rights reserved.
//

import UIKit
import AVFoundation

class ScanViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate {

    var qrSession: AVCaptureSession?
    var qrLayer: AVCaptureVideoPreviewLayer?
    var qrFrame: UIView?
    var qrUrls: String?
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        //Se inicia captura de metadatos antes de que aparezca la vista
        qrSession?.startRunning()
        qrFrame?.frame = CGRect.zero
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let videoDevice = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo)
        
        do {
            
            let input = try AVCaptureDeviceInput(device: videoDevice)
            
            qrSession = AVCaptureSession()
            qrSession?.addInput(input)
            let qrMetadata = AVCaptureMetadataOutput()
            qrSession?.addOutput(qrMetadata)
            qrMetadata.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
            qrMetadata.metadataObjectTypes = [AVMetadataObjectTypeQRCode]
            
            qrLayer = AVCaptureVideoPreviewLayer(session: qrSession!)
            qrLayer?.videoGravity = AVLayerVideoGravityResizeAspectFill
            qrLayer?.frame = view.layer.bounds
            view.layer.addSublayer(qrLayer!)
            
            qrFrame = UIView()
            qrFrame?.layer.borderWidth = 3
            qrFrame?.layer.borderColor = UIColor.red.cgColor
            view.addSubview(qrFrame!)
            
            qrSession?.startRunning()
            
        } catch {
            
            print("Error Getting Metadata...")
            
        }
    }
    
    func captureOutput(_ captureOutput: AVCaptureOutput!, didOutputMetadataObjects metadataObjects: [Any]!, from connection: AVCaptureConnection!) {
        
        //Si se detecta algo, se desaparece el marco rojo
        qrFrame?.frame = CGRect.zero
        
        if metadataObjects == nil || metadataObjects.count == 0 {
            
            return
        }
        
        let objMetadata = metadataObjects[0] as! AVMetadataMachineReadableCodeObject
        
        if objMetadata.type == AVMetadataObjectTypeQRCode{
            
            let objBorder = qrLayer?.transformedMetadataObject(for: objMetadata)
            qrFrame?.frame = (objBorder?.bounds)!
            
            if objMetadata.stringValue != nil {
                
                print("ScanResult: \(objMetadata.stringValue)")
                
                self.qrUrls = objMetadata.stringValue
                
                self.qrSession?.stopRunning()
                
                let scanResultViewController = storyboard?.instantiateViewController(withIdentifier: "scan-result-vc")
                
                self.navigationController?.pushViewController(scanResultViewController!, animated: true)
            }
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let destinyViewController = segue.destination as! ScanResultViewController
        self.qrSession?.stopRunning()
        destinyViewController.urlFromQR = self.qrUrls!
    }
    

}
