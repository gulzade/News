//
//  NewsCollectionViewCell.swift
//  News
//
//  Created by Gülzade Karataş on 18.09.2022.
//

import UIKit

class NewsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var newsImageView: UIImageView!
    
    @IBOutlet weak var newsCategoryLabel: UILabel!
    func setupView(){

        newsImageView.layer.masksToBounds = true
        newsImageView.layer.borderColor = UIColor.systemGray4.cgColor
        newsImageView.layer.borderWidth = 1.0
        newsImageView.layer.cornerRadius = CGFloat(roundf(Float(self.newsImageView.frame.size.width / 2.0)))
        newsImageView.layer.backgroundColor = UIColor.white.cgColor
    }
}
