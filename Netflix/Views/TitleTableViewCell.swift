//
//  TitleTableViewCell.swift
//  Netflix
//
//  Created by Madina Amankeldinova on 23.09.2023.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    static let identifier = "TitleTableViewCell"
    
    
    private let playTitleButton: UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let titlePosterUIImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    
    override init( style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titlePosterUIImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(playTitleButton)
        
        applyConstraints()
        

    }
    
    private func applyConstraints() {
        let titlePosterUIImageViewConstrains = [
            titlePosterUIImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titlePosterUIImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            titlePosterUIImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
            titlePosterUIImageView.widthAnchor.constraint(equalToConstant: 100)
        
        ]
        
        let titleLabelConstraints  = [
            
            titleLabel.leadingAnchor.constraint(equalTo: titlePosterUIImageView.trailingAnchor, constant: 20),
            titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        
            
        ]
        
        NSLayoutConstraint.activate(titlePosterUIImageViewConstrains)
        NSLayoutConstraint.activate(titlePosterUIImageViewConstrains)
        
    }
    
    
    public func configure(with model: TitleViewModel) {

        guard let url = URL(string: model.posterURL) else {
            return
        }
        
        
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model.posterURL)") else {
            return
        }
        titlePosterUIImageView.sd_setImage(with: url, completed: nil)
        titleLabel.text = model.titleName 
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

}
