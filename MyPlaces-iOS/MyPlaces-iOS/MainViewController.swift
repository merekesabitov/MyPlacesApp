//
//  MainViewController.swift
//  MyPlaces-iOS
//
//  Created by Mereke Sabitov on 11.08.2023.
//

import UIKit

class MainViewController: UITableViewController {

    var place = Place.getPlaces()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return place.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        let places = place[indexPath.row]
        
        cell.nameOfPlaces.text = places.name
        
        if places.image == nil {
            cell.imageOfPlaces.image = UIImage(named: places.restaurantImage!)
        } else {
            cell.imageOfPlaces.image = places.image
        }
        
        cell.imageOfPlaces.layer.cornerRadius = cell.imageOfPlaces.frame.size.height / 2
        cell.imageOfPlaces.clipsToBounds = true
        
        cell.locationOfPlaces.text = places.location
        cell.typeOfPlaces.text = places.type
       
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        85
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func savePlace (_ segue: UIStoryboardSegue) {
        guard let newPlaceVC = segue.source as? NewPlaceTableViewController else { return }
        
        newPlaceVC.saveNewPlace()
        place.append(newPlaceVC.place!)
        tableView.reloadData()
    }
}
