//
//  ViewController.swift
//  Kalkulator
//
//  Created by Mac n Cheese on 08/06/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfAngkaPertama: UITextField!
    @IBOutlet weak var tfAngkaKedua: UITextField!
   
    @IBOutlet weak var lblHasil: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    

    @IBAction func btnTambah(_ sender: Any) {
        hitung(aritmetik: "+")
    }
    @IBAction func btnKurang(_ sender: Any) {
        hitung(aritmetik: "-")
    }
    @IBAction func btnKali(_ sender: Any) {
        hitung(aritmetik:  "*")
    }
    @IBAction func btnBagi(_ sender: Any) {
        hitung(aritmetik: "/")
    }
    
    func hitung (aritmetik : Character){
        
        let angkaPertama = tfAngkaPertama.text?.trimmingCharacters(in:.whitespaces)
        let angkaKedua = tfAngkaKedua.text?.trimmingCharacters(in: .whitespaces)
        
        
        if angkaPertama!.isEmpty || angkaKedua!.isEmpty{
            showAlert(title: "Warning", message: "Tidak Boleh Kosong")
            return
        }
       
        
        var hasil : Double? = nil
        
        switch aritmetik {
        case "+":
            hasil = Double(angkaPertama!)! + Double(angkaKedua!)!
        case "-":
            hasil = Double(angkaPertama!)! - Double(angkaKedua!)!
        case "*":
            hasil = Double(angkaPertama!)! * Double(angkaKedua!)!
        case "/":
            hasil = Double(angkaPertama!)! / Double(angkaKedua!)!
        default:
            showAlert(title: "Info", message: "Error")
        }
        lblHasil.text = String(hasil!)
    }
    
    func showAlert(title : String, message : String){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
}

