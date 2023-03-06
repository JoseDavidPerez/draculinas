//
//  CustomCellTableViewCell.swift
//  Draculinas
//
//  Created by Jose David Torres Perez on 03/03/23.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {

    static let identifier =  "CustomCell"
    
    private let myImageView : UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(systemName: "questionmark")
        iv.tintColor = .label
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 24, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Error"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle,reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupUI()
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder: has not been implemented)")
    }
    
    private func setupUI(){
        self.contentView.addSubview(myImageView)
        self.contentView.addSubview(myLabel)
        contraintsUI()
    }
    
    private func contraintsUI(){
        NSLayoutConstraint.activate([
            myImageView.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            myImageView.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
            myImageView.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
            myImageView.heightAnchor.constraint(equalToConstant:90),
            myImageView.widthAnchor.constraint(equalToConstant: 90),
            
            myLabel.leadingAnchor.constraint(equalTo: myImageView.leadingAnchor, constant: 16),
            myLabel.trailingAnchor.constraint(equalTo: myImageView.trailingAnchor, constant: -12),
            myLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            myLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
