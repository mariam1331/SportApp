//
//  ViewController.swift
//  sportApp
//
//  Created by Maria Kogut on 04.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let cell = "WorkoutTableViewCell"
    var workouts: [Workout] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
        setuptableView()
    }
    func setData() {
        workouts.append(Workout.init(title: "Приседания", description: "Приседания с мини-штангой на плечах или с гантелями в руках", repetition: 15))
        workouts.append(Workout.init(title: "Жим", description: "Жим гантелей лежа на горизонтальной скамье.", repetition: 15))
        workouts.append(Workout.init(title: "Выпады", description: "Выпады с шагом назад или шагом вперед с гантелями в руках. Рекомендую для начинающих делать выпады без гантелей", repetition: 15))
    }
    func setuptableView() {
        tableView.dataSource = self
        tableView.delegate = self
        
        let cellNib = UINib(nibName: cell, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: cell)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workouts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: cell) as? WorkoutTableViewCell {
            cell.title.text = workouts[indexPath.row].title
            return cell
        }
        return UITableViewCell()
        
    }
    
    
}
extension ViewController: UITableViewDelegate {
    
}
