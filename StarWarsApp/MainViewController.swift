//
//  ViewController.swift
//  StarWarsApp
//
//  Created by Дмитрий Пономарев on 07.08.2023.
//

import UIKit
import SnapKit
import RxDataSources

let model = [TetstModel(name: "ko"),
             TetstModel(name: "lo"),
             TetstModel(name: "jo")]

class MainViewController: UIViewController {
    
    let network = NetworkManager()
    var viewModel: MainViewModelProtocol!
    var searchBar = UISearchBar()
    var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        makeConstraints()
        makeTableView()
        network.makeRequest()
    }
    
    func addViews() {
        view.addSubview(tableView)
    }
    
    func makeConstraints() {
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    func makeTableView() {
        tableView.dataSource = self
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableViewCell.identifier)
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.identifier) as? MainTableViewCell else { return UITableViewCell()}
        let model = model[indexPath.row]
        cell.configureView(model)
        return cell
    }
    
    
}
