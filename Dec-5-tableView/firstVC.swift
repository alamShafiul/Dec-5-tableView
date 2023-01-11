//
//  ViewController.swift
//  Dec-5-tableView
//
//  Created by Admin on 5/12/22.
//

import UIKit

class firstVC: UIViewController {
    @IBOutlet weak var animalTable: UITableView!
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animalTable.delegate = self
        animalTable.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "segueForSecond") {
            if let second = segue.destination as? secondVC {
                let index = animalTable.indexPathForSelectedRow
                second.loadViewIfNeeded()
                second.showImg.image = UIImage(named: Pets.details[index!.row].pic)
            }
        }
    }
}


extension firstVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Animal"
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Pets.details.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = animalTable.dequeueReusableCell(withIdentifier: "secondTempCell", for: indexPath) as! customTVC
        
        cell.labelView.text = Pets.details[indexPath.row].name
        cell.imgView.image = UIImage(named: Pets.details[indexPath.row].pic)
                
        return cell
    }
}

extension firstVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segueForSecond", sender: self)
    }
}

