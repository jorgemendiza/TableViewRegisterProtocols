//
//  RegisterTableView.swift
//  RegisterProtocol
//
//  Created by Jorge Mendizabal on 14/09/20.
//  Copyright © 2020 Jorge Mendizabal. All rights reserved.
//

import UIKit

protocol RegisterTableView: UITableViewCell {
    static func register(in tableView: UITableView)
    static func deque(from tableView: UITableView) -> Self
    static var identifier: String { get }
    static var nib: UINib { get }
}

extension UITableViewCell: RegisterTableView {
    
    static func register(in tableView: UITableView) {
        tableView.register(nib, forCellReuseIdentifier: identifier)
    }
    
    static func deque(from tableView: UITableView) -> Self {
        return tableView.dequeueReusableCell(withIdentifier: identifier) as! Self
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}
