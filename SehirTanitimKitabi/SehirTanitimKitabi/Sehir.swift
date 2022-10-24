//
//  Sehir.swift
//  SehirTanitimKitabi
//
//  Created by Muhammed Sağlam on 9.10.2022.
//

import Foundation
import UIKit

class Sehir {
        
    var isim : String
    var bolge : String
    var gorsel : UIImage //uikit import edilmezse uiimage vs kullanılamaz
    
    init(isim: String, bolge: String, gorsel: UIImage) {
        self.isim = isim
        self.bolge = bolge
        self.gorsel = gorsel
    }
}
