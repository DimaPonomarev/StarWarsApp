//
//  vTableViewCell.swift
//  StarWarsApp
//
//  Created by Дмитрий Пономарев on 07.08.2023.
//

import UIKit
import SnapKit


final class MainTableViewCell: UITableViewCell {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    //MARK: - UI properties
    
    let label = UILabel()
    
    
    //MARK: init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public Methods
    
    func configureView(_ model: TetstModel) {
        label.text = model.name
    }
    
}

//MARK: - Private methods

private extension MainTableViewCell {
    
    //MARK: - Setup
    
    //TODO: setup UI
    
    func setup() {
        addViews()
        makeConstraints()
        setupViews()
    }
    
    //MARK: - addViews
    
    func addViews() {
        contentView.addSubview(label)
    }
    
    //MARK: - makeConstraints
    
    func makeConstraints() {
        label.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    //MARK: - setupViews
    
    func setupViews() {

    }
}
