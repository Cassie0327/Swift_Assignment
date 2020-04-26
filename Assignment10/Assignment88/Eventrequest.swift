//
//  Eventrequest.swift
//  Assignment88
//
//  Created by 蔡倩 on 11/25/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import Foundation
enum eventerror:Error
{
    case noData
    case canNotprocess
    
}

struct EventRequst
{
    var resourceURL: URL
    init (Api_key:String)
    {
        let sourceString = "https://www.eventbriteapi.com/v3/users/me/events/?token=CSR42VDQ24T4VBC52COJ"
        guard let resourceURL = URL(string: sourceString) else { fatalError()}
        self.resourceURL = resourceURL
    }
    func getEvents (completion: @escaping(Result<[EventDetail],eventerror>)-> Void)
    {
        let dataTask = URLSession.shared.dataTask(with: resourceURL) { data, responce, _ in
            guard let jsonData = data else
            {
                completion(.failure(.noData))
                return
            }
            do{
                let decoder = JSONDecoder()
                print(jsonData)
                let eventResponse = try decoder.decode(EventResponse.self, from: data!)
                let eventDetails = eventResponse.events
                print(eventDetails)
                completion(.success(eventDetails))
                
            }
            catch
            {
                completion(.failure(.canNotprocess))
            }
        }
        dataTask.resume()
    }

    }

    

