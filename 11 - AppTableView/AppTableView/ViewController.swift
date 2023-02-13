//
//  ViewController.swift
//  AppTableView
//
//  Created by Alessandre Livramento on 11/02/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!

    var listName: [String] = ["Caio", "Albert", "Matheus", "Felipe", "Lucas"]

    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }

    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
}

// MARK: - PROTOCOLS TABLEVIEW

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listName.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell

        cell?.setupCell(title: listName[indexPath.row])

        return cell ?? UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("O nome que foi selecionado foi : \(listName[indexPath.row])")
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
