//
//  ViewController.swift
//  OSJ
//

import UIKit

class KakaoChatLandingViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    // TODO: TableView를 만들어서 outlet으로 추가해주세요.

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
    }

    func setupTableView() {
        // TODO: TableView를 datasource을 설정해주세요.
        tableView.dataSource = self
    }

    private let list = Message.dummyList
}

extension KakaoChatLandingViewController: UITableViewDataSource {
    // TODO: UITableViewDataSource를 설정해주세요.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
        //TODO: list의 갯수만큼 나오게 해주세요.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "KakaoChatTableViewCell", for: indexPath) as? KakaoChatTableViewCell else {
                return UITableViewCell()
        }
        let item = list[indexPath.item]
        cell.configure(message: item)
        return cell
        // TODO: KakaoChatTableViewCell을 생성해주세요. 생성하고 configure을 불러주세요.
    }
    
}
