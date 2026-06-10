//
//  ViewController.swift
//  SettingScreen
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var allSections: [[ModelSettings]] = []
    var objNetworkManager: NetworkProtocol?
    
    var isInternetAvailable = false

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "General"

        tableView.dataSource = self
        tableView.delegate = self

        objNetworkManager = MockNetworkManager.sharedInstance
        allSections = objNetworkManager?.getDataFromServer(for: "mock") ?? []

        fetchSettingData()
    }
    // Mock Data
    func fetchSettingData() {
        if isInternetAvailable{
            objNetworkManager = NetworkManager.sharedInstance
        } else {
            objNetworkManager = MockNetworkManager.sharedInstance
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return allSections.count
    }

    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return allSections[section].count
    }

    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    func tableView(_ tableView: UITableView,
                   heightForHeaderInSection section: Int) -> CGFloat {
        return 35
    }

    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(
            withIdentifier: "SettingsCell",
            for: indexPath
        ) as! SettingsCell

        let item = allSections[indexPath.section][indexPath.row]

        cell.titleLabel.text = item.title
        cell.titleLabel.font = .systemFont(ofSize: 15)

        cell.iconImage.image = UIImage(systemName: item.icon)
        cell.iconImage.tintColor = item.color
        cell.iconImage.contentMode = .scaleAspectFit

        // reduce icon size
        cell.iconImage.translatesAutoresizingMaskIntoConstraints = false
        cell.iconImage.widthAnchor.constraint(equalToConstant: 22).isActive = true
        cell.iconImage.heightAnchor.constraint(equalToConstant: 22).isActive = true

        cell.accessoryType = .disclosureIndicator
        cell.selectionStyle = .none
        
        return cell
    }
}
