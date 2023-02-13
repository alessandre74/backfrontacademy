//
//  ViewController.swift
//  DesafioTableView
//
//  Created by Alessandre Livramento on 12/02/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!

    var listBrand: [Car] = [
        Car(brand: "Fiat", brandImage: UIImage(named: "fiat") ?? UIImage()),
        Car(brand: "Honda", brandImage: UIImage(named: "honda") ?? UIImage()),
        Car(brand: "Renault", brandImage: UIImage(named: "renault") ?? UIImage()),
        Car(brand: "BMW", brandImage: UIImage(named: "bmw") ?? UIImage()),
        Car(brand: "Audi", brandImage: UIImage(named: "audi") ?? UIImage()),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }

    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CarTableViewCell.nib(), forCellReuseIdentifier: CarTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listBrand.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CarTableViewCell.identifier, for: indexPath) as? CarTableViewCell

        cell?.setupCell(listBrand[indexPath.row])

        return cell ?? UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("A marca selecionada foi: \(listBrand[indexPath.row].brand)")
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
