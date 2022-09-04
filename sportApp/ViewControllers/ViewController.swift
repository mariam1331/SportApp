//
//  ViewController.swift
//  sportApp
//
//  Created by Maria Kogut on 04.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setuptableView()
    }
    
    func setuptableView() {
        tableView.dataSource = self
        tableView.delegate = self
       
        let cellNib = UINib(nibName: "WorkoutTableViewCell", bundle: nil)
            tableView.register(cellNib, forCellReuseIdentifier: "WorkoutTableViewCel")
        }
    

}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WorkoutTableViewCell") as? WorkoutTableViewCell {
            return cell
        }
        return UITableViewCell()

    }
    
    
}
extension ViewController: UITableViewDelegate {
    
}
