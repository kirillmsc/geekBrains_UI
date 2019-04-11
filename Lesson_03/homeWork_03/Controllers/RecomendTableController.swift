//
//  RecomendTableController.swift
//  homeWork_03
//
//  Created by k.kochemasov on 11/04/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

class RecomendTableController: UITableViewController {
    
    public let recomendations: [Recomend] = [
        Recomend(group: "Serebro"),
        Recomend(group: "Kadish"),
        Recomend(group: "POP")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recomendations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: RecomendCell.reuseId, for: indexPath) as? RecomendCell else {fatalError("No!")}
    
        cell.recomendCell.text = recomendations[indexPath.row].group
        
        return cell
    }
}