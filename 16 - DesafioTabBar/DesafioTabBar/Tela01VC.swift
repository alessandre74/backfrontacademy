//
//  Tela01VC.swift
//  DesafioTabBar
//
//  Created by Alessandre Livramento on 13/02/23.
//

import UIKit

class Tela01VC: UIViewController {
    @IBOutlet var profileImageView: UIImageView!

    @IBOutlet var editPictureButton: UIButton!

    @IBOutlet var nameLabel: UILabel!

    @IBOutlet var nameTextField: UITextField!

    @IBOutlet var addButton: UIButton!

    @IBOutlet var tableView: UITableView!

    var data: [Profile] = []

    let imagePicker: UIImagePickerController = UIImagePickerController()
    var alert: AlertController?

    override func viewDidLoad() {
        super.viewDidLoad()
        alert = AlertController(controller: self)
        configElements()
        configTabeView()
        configImagePicker()
    }

    func configImagePicker() {
        imagePicker.delegate = self
        imagePicker.allowsEditing = false
    }

    func configElements() {
        view.backgroundColor = .lightGray
        nameLabel.text = "Nome:"
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.image = UIImage(systemName: "person.circle.fill")
        profileImageView.tintColor = .black
        profileImageView.clipsToBounds = true
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2

        nameTextField.placeholder = "Digite seu nome:"
    }

    func configTabeView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }

    @IBAction func tappedEditPictureButton(_ sender: UIButton) {
        alert?.chooseImage(completion: { option in
            switch option {
            case .camera:
                if UIImagePickerController.isSourceTypeAvailable(.camera) {
                    self.imagePicker.sourceType = .camera
                } else {
                    self.imagePicker.sourceType = .photoLibrary
                }
                self.present(self.imagePicker, animated: true)
            case .library:
                self.imagePicker.sourceType = .photoLibrary
                self.present(self.imagePicker, animated: true)
            case .cancel:
                break
            }
        })
    }

    @IBAction func tappedAddButton(_ sender: UIButton) {
        if nameTextField.text == "" {
            alert?.alertInformation(title: "Atenção", message: "Por favor, informe o nome!")
        } else {
            data.append(Profile(name: nameTextField.text ?? "", photo: profileImageView.image ?? UIImage()))
            profileImageView.image = UIImage(systemName: "person.circle.fill")
            nameTextField.text = ""
            tableView.reloadData()
        }
    }
}

extension Tela01VC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.setupCell(profile: data[indexPath.row])

        return cell ?? UITableViewCell()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}

extension Tela01VC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            profileImageView.image = image
        }

        picker.dismiss(animated: true)
    }
}
