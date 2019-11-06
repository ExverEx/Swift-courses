//
//  ViewController.swift
//  b3_les2
//
//  Created by Alexander on 27/10/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var urlComponents = URLComponents()
          urlComponents.scheme = "https"
          urlComponents.host = "oauth.vk.com"
          urlComponents.path = "/authorize"
          urlComponents.queryItems = [
              URLQueryItem(name: "client_id", value: "7185690"),
              URLQueryItem(name: "display", value: "mobile"),
              URLQueryItem(name: "redirect_uri", value: "https://oauth.vk.com/blank.html"),
              URLQueryItem(name: "scope", value: "262150"),
              URLQueryItem(name: "response_type", value: "token"),
              URLQueryItem(name: "v", value: "5.68")
          ]
        
          let request = URLRequest(url: urlComponents.url!)
          
          webView.load(request)

    }

}

class VKApi {
    
    let session = Session.instance
    session.login = parametres?["email"] ?? ""
    session.userID = parametres?["user_id"] ?? ""
    session.token = parametres?["token"] ?? ""
    
    func getFriend() {
        let token = ["token": session.token]
        
        var urlFriendList = URLComponents()
        urlFriendList.scheme = "https"
        urlFriendList.host = "api.vk.com"
        urlFriendList.path = "/method/friends.get"
        urlFriendList.queryItems = [
            URLQueryItem(name: "user_id", value: session.userID),
            URLQueryItem(name: "order", value: "name"),
            URLQueryItem(name: "count", value: "3"),
            URLQueryItem(name: "friends", value: "nickname, domain, sex, bdate, city"),
            URLQueryItem(name: "name_case", value: "ins"),
            URLQueryItem(name: "v", value: "5.68")
        ]
    }
    
    func searchGroups(text: String) {
        let token = ["token": session.token]
        
        var urlGroupsSearch = URLComponents()
        urlGroupsSearch.scheme = "https"
        urlGroupsSearch.host = "api.vk.com"
        urlGroupsSearch.path = "/method/groups.search"
        urlGroupsSearch.queryItems = [
            URLQueryItem(name: "q", value: text),
            URLQueryItem(name: "count", value: "3"),
            URLQueryItem(name: "v", value: "5.68"),
        ]
    }

    func getGroups() {
        let token = ["token": session.token]
        
        var urlGroupsList = URLComponents()
        urlGroupsList.scheme = "https"
        urlGroupsList.host = "api.vk.com"
        urlGroupsList.path = "/method/groups.get"
        urlGroupsList.queryItems = [
            URLQueryItem(name: "user_id", value: session.userID),
            URLQueryItem(name: "extended", value: "1"),
            URLQueryItem(name: "count", value: "3"),
            URLQueryItem(name: "v", value: "5.68"),
        ]
    }
    
    func getUserPhotos() {
        let token = ["token": session.token]
        
        var urlUserPhotos = URLComponents()
        urlUserPhotos.scheme = "https"
        urlUserPhotos.host = "api.vk.com"
        urlUserPhotos.path = "/method/photos.get"
        urlUserPhotos.queryItems = [
            URLQueryItem(name: "user_id", value: session.userID),
            URLQueryItem(name: "owner_id", value: session.userID),
            URLQueryItem(name: "album_id", value: "profile"),
            URLQueryItem(name: "count", value: "3"),
            URLQueryItem(name: "v", value: "5.68"),
        ]
    }
    
    
    
}

