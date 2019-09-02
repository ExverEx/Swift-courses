//
//  ViewController.swift
//  lesson_6
//
//  Created by Alexander on 02/09/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var news: [News] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "NewsCell", bundle: nil), forCellReuseIdentifier: "NewsCell")
        
        self.tableView.rowHeight = 400
        
        news.append(News(title: "Кобачки поспели", imageName: "0", discText: "Кукурузо был отличным парнем пока не попал к курице"))
        news.append(News(title: "Купили два стула, а получили", imageName: "1", discText: "Погода конечно была хороше, но все испоритили сливы Иваныча"))
        news.append(News(title: "Было двадцать, стало два", imageName: "2", discText: "Пока ты спал, суслик снес 3 яйца и продал их в магазин за углом. Теперь выручки хватит чтобы купит 2 зонта и больше не промокать под дождем"))
        news.append(News(title: "Читайцы захватят мир", imageName: "3", discText: "А это просто новость ради новости"))
        
        self.tableView.dataSource = self
    }


}

