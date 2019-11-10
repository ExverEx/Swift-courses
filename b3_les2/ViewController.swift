//
//  ViewController.swift
//  b3_les2
//
//  Created by Alexander on 27/10/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit
import WebKit
import Alamofire

class Session {
    
    static let instance = Session()
    private init () { }
    
    var token   = String()
    var userID  = String()
    var login   = String()
}

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var urlComponents = URLComponents()
          urlComponents.scheme  = "https"
          urlComponents.host    = "oauth.vk.com"
          urlComponents.path    = "/authorize"
          urlComponents.queryItems = [
              URLQueryItem(name: "client_id", value: "7185690"),
              URLQueryItem(name: "display", value: "mobile"),
              URLQueryItem(name: "redirect_uri", value: "https://oauth.vk.com/blank.html"),
              URLQueryItem(name: "scope", value: "262150"),
              URLQueryItem(name: "response_type", value: "token"),
              URLQueryItem(name: "v", value: "5.68")
          ]
        
        webView.load(URLRequest(url: urlComponents.url!))
          
        webView.navigationDelegate = self

    }

}

extension ViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        guard let url = navigationResponse.response.url, url.path == "/blank.html" else {
            decisionHandler(.allow)
            return
        }
        
        let params = url.fragment?
            .components(separatedBy: "&")
            .map{$0.components(separatedBy: "=")}
            .reduce([String: String](), {(result, parameters) in
                var resultDict  = result
                let key         = parameters[0]
                let value       = parameters[1]
                resultDict[key] = value
                
                return resultDict
            })
        
        let session = Session.instance
        session.login   = params?["email"] ?? ""
        session.userID  = params?["user_id"] ?? ""
        session.token   = params?["token"] ?? ""
        
        print(session.login, session.userID, session.token)
        
        let accessParams: Parameters = [
            "access_token": session.token
        ]
    }
}


class VKApi {
    let session = Session.instance
    
    func getFriend() {
        let accessParams = ["access_token": session.token]
        
        var urlFriendList = URLComponents()
        urlFriendList.scheme        = "https"
        urlFriendList.host          = "api.vk.com"
        urlFriendList.path          = "/method/friends.get"
        urlFriendList.queryItems    = [
            URLQueryItem(name: "user_id", value: session.userID),
            URLQueryItem(name: "order", value: "name"),
            URLQueryItem(name: "count", value: "3"),
            URLQueryItem(name: "friends", value: "nickname, domain, sex, bdate, city"),
            URLQueryItem(name: "name_case", value: "ins"),
            URLQueryItem(name: "v", value: "5.68")
        ]
        
        Alamofire.request(urlFriendList, method: .get, parameters: accessParams).responseJSON {response in print(response.value ?? "")}
    }
    
    func searchGroups(text: String) {
        let accessParams = ["access_token": session.token]
        
        var urlGroupsSearch = URLComponents()
        urlGroupsSearch.scheme      = "https"
        urlGroupsSearch.host        = "api.vk.com"
        urlGroupsSearch.path        = "/method/groups.search"
        urlGroupsSearch.queryItems  = [
            URLQueryItem(name: "q", value: text),
            URLQueryItem(name: "count", value: "3"),
            URLQueryItem(name: "v", value: "5.68"),
        ]
        
        Alamofire.request(urlGroupsSearch, method: .get, parameters: accessParams).responseJSON {response in print(response.value ?? "")}
    }

    func getGroups() {
        let accessParams = ["access_token": session.token]
        
        var urlGroupsList = URLComponents()
        urlGroupsList.scheme        = "https"
        urlGroupsList.host          = "api.vk.com"
        urlGroupsList.path          = "/method/groups.get"
        urlGroupsList.queryItems    = [
            URLQueryItem(name: "user_id", value: session.userID),
            URLQueryItem(name: "extended", value: "1"),
            URLQueryItem(name: "count", value: "3"),
            URLQueryItem(name: "v", value: "5.68"),
        ]
        
        Alamofire.request(urlGroupsList, method: .get, parameters: accessParams).responseJSON {response in print(response.value ?? "")}
    }
    
    func getUserPhotos() {
        let accessParams = ["access_token": session.token]
        
        var urlUserPhotos = URLComponents()
        urlUserPhotos.scheme        = "https"
        urlUserPhotos.host          = "api.vk.com"
        urlUserPhotos.path          = "/method/photos.get"
        urlUserPhotos.queryItems    = [
            URLQueryItem(name: "user_id", value: String(session.userID)),
            URLQueryItem(name: "owner_id", value: String(session.userID)),
            URLQueryItem(name: "album_id", value: "profile"),
            URLQueryItem(name: "count", value: "3"),
            URLQueryItem(name: "v", value: "5.68"),
        ]
        
        Alamofire.request(urlUserPhotos, method: .get, parameters: accessParams).responseJSON {response in print(response.value ?? "")}
    }
    
    
    
}

