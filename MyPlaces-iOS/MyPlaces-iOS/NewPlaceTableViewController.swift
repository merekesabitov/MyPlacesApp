//
//  NewPlaceTableViewController.swift
//  MyPlaces-iOS
//
//  Created by Mereke Sabitov on 14.08.2023.
//

import UIKit

class NewPlaceTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.estimatedSectionHeaderHeight = 0
        self.tableView.estimatedSectionFooterHeight = 0
        
    }

    //Mark: Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
        } else {
            view.endEditing(true)
        }
    }
    

}

//Mark: text field extension

extension NewPlaceTableViewController: UITextFieldDelegate {
    
    //hide keyboard on click "Done"
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    }

