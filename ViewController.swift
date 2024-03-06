//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Ahmed Emrah Calayır on 5.03.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var mySimpsons = [Simpsons]()
    var choosenSimpson : Simpsons?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let bart = Simpsons(name: "Bart Simpson", job: "Student", image: UIImage(named: "bart.jpg")!)
        let homer = Simpsons(name: "Homer Simpson", job: "Chemist", image: UIImage(named: "homer.jpg")!)
        let lisa = Simpsons(name: "Lisa Simpson", job: "Student", image: UIImage(named: "lisa.jpg")!)
        let marge = Simpsons(name: "Marge Simpson", job: "Housewife", image: UIImage(named: "marge.jpg")!)
        let maggie = Simpsons(name: "Maggie Simpson", job: "Baby", image: UIImage(named: "margeret.jpg")!)
        mySimpsons.append(bart)
        mySimpsons.append(homer)
        mySimpsons.append(lisa)
        mySimpsons.append(marge)
        mySimpsons.append(maggie)

                
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var config = cell.defaultContentConfiguration()
        config.text = mySimpsons[indexPath.row].name
        cell.contentConfiguration = config
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destination = segue.destination as! detailsVC
            destination.selectedSimpson = choosenSimpson
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            mySimpsons.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }

}
