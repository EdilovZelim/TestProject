//
//  ViewController.swift
//  TestProject
//
//  Created by MacBook on 04.03.2021.
//  Copyright © 2021 ZelimkhanEdilov. All rights reserved.
//
//
//
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    let serviceWork = ServiceWork()
    var jsonResponse: Json? = nil
    var nameData: Data? = nil


    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        let jsonUrl = "https://pryaniky.com/static/json/sample.json"

        serviceWork.loadData(urlStr: jsonUrl) {[weak self] (result) in
            switch result {

            case .success(let jsonResponse):
                self?.jsonResponse = jsonResponse
                self?.tableView.reloadData()
            case .failure(let error):
                print(error)
            }
        }
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jsonResponse?.data.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let names = jsonResponse?.data[indexPath.row]
        cell.dataName.text = names?.name

//        cell.dataImage.image = UIImage(data: nameData?.url)
        return cell
    }

}

extension ViewController: UITableViewDelegate {

}
