//
//  SettingCell.swift
//  SettingScreen
//
//  Created by Naga Rajitha Bhogadi on 6/1/26.
//
import UIKit

//MARK: - IBOutlet Creation For Setting Cell

class SettingsCell: UITableViewCell {
    
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        iconImage.contentMode = .scaleAspectFit
        iconImage.tintColor = .systemBlue
    }
}
