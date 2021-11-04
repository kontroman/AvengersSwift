//
//  HeroesCell.swift
//  MarvelApp
//
//  Created by user207112 on 10/21/21.
//

import UIKit

class HeroesCell: UICollectionViewCell {

  lazy var heroImage: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()

  lazy var nameLabel: UILabel = {
    let label = UILabel()
    label.textAlignment = .left
    label.textColor = .white
    label.font = UIFont.boldSystemFont(ofSize: 27)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  override public init(frame: CGRect) {
    super.init(frame: frame)
    self.createUI()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }


  private func createUI() {
    addSubview(heroImage)
    addSubview(nameLabel)
    translatesAutoresizingMaskIntoConstraints = false
    heroImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
    heroImage.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
    heroImage.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    heroImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

    nameLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
    nameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
    nameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
    nameLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive = true

  }
  func setupCell(hero:Hero) {
    self.heroImage.image = hero.image
    self.heroImage.backgroundColor = .black
    backgroundColor = .black
  }
}
