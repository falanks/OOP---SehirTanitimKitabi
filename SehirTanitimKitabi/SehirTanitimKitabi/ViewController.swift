//
//  ViewController.swift
//  SehirTanitimKitabi
//
//  Created by Muhammed Sağlam on 9.10.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirDizisi[indexPath.row].isim
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            sehirDizisi.remove(at: indexPath.row)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullaniciSecimi = sehirDizisi[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenSehir = kullaniciSecimi
        }
    }

    @IBOutlet weak var tableView: UITableView!
    
    var sehirDizisi = [Sehir]()
    var kullaniciSecimi : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        //SEHİRLER
        
        //let istanbul = Sehir()
        //istanbul.isim = "istanbul"
        //istanbul.bolge = "marmara"
        //istanbul.gorsel = UIImage(named: "istanbul")!
        
        let istanbul = Sehir(isim: "istanbul", bolge: "marmara", gorsel: UIImage(named: "istanbul")!)
        let ankara = Sehir(isim: "ankara", bolge: "iç anadolu", gorsel: UIImage(named: "ankara")!)
        let izmir = Sehir(isim: "izmir", bolge: "ege", gorsel: UIImage(named: "izmir")!)
        let antalya = Sehir(isim: "antalya", bolge: "akdeniz", gorsel: UIImage(named: "antalya")!)
        let diyarbakir = Sehir(isim: "diyarbakır", bolge: "güneydoğu anadolu", gorsel: UIImage(named: "diyarbakir")!)
        
        sehirDizisi = [istanbul, ankara, izmir, antalya, diyarbakir] //append ile de ekleyebilirdik.

    }


}

