//
//  TableView + EXT.swift
//  NearBy
//
//  Created by Ahmed Amin on 24/07/2024.
//

import Foundation
import UIKit


extension UITableView {
    
    func registerForNib<T: UITableViewCell>(_ class: T.Type) {
        let nib = UINib(nibName: T.reuseIdentifier, bundle: nil)
        self.register(nib, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as! T
    }
}


extension UITableViewCell {
   class var reuseIdentifier: String {
        String(describing: self)
    }
}
