//
//  MainViewController.swift
//  Draculinas
//
//  Created by Jose David Torres Perez on 03/03/23.
//

import UIKit

class MainViewController: UIViewController {
    
    private let image : [UIImage] = [
        UIImage(named: "profile")!,
        UIImage(named: "profile")!,
        UIImage(named: "Draculinas")!,
        UIImage(named: "profile")!,
        UIImage(named: "Draculinas")!,
    ]
    
    
    private let tableView : UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .systemBackground
        tableView.allowsSelection = true
        tableView.register(CustomCellTableViewCell.self, forCellReuseIdentifier: "CustomCell")
        tableView.translatesAutoresizingMaskIntoConstraints = true
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        setupUI()
    }
    
    private func setupUI(){
        self.view.backgroundColor = .white
        view.addSubview(tableView)
        contraintsUI()
        
    }
    
    func contraintsUI(){
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    
}

extension MainViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.image.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomCellTableViewCell.identifier, for: indexPath) as? CustomCellTableViewCell else {
            fatalError("The TableView could not dequeue a CustomCell in ViewController")
        }
        cell.textLabel?.text = indexPath.row.description
        return cell
    }
    
    
    
}
