//
//  ViewController.swift
//  Youtube-video-list
//
//  Created by TaChyla Murray on 7/12/17.
//  Copyright © 2017 TaChyla Murray. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var tableView: UITableView!
    var videos: [Video] = [Video] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Created VideoModel object using the method getVideos
        let model = VideoModel()
        //The result is set equal to self.videos
        self.videos = model.getVideos()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return videos.count
        
    }
    
    func tableView(_ tableView: UITableView,  cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //guard check if the value is not nil
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell")  else {
            //if its nil display the default UITableViewCell and error message
            let errorCell = UITableViewCell(style: .default, reuseIdentifier: nil)
            errorCell.textLabel?.text = "There was a problem creating this cell, tell the developer"
            return errorCell
        }
        //otherwise return the cell
        return cell;
        
    }
    
    func tableView(_ tableView: UITableView,willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let videoTitle = videos[indexPath.row].videoTitle
        
        //Customize the cell to display the video tytle
        cell.textLabel?.text = videoTitle
        
        
        
        //construct the video thumbnail url
        let videoThumbnailUrlString = "https://i.ytimg.com/vi/" + videos[indexPath.row].videoId + "/hqdefault.jpg"
        
        //create a Url object
        //check if the value is nil
        
        //conditional binding check if nil on assigned
        if  let videoThumbnailUrl = URL(string: videoThumbnailUrlString) {
            
            //create a UrlRequest object
            //let request = URLRequest(url: videoThumbnailUrl! as URL)
            let urlRequest = URLRequest(url: videoThumbnailUrl)
            
            
            //create an URLSession
            let session = URLSession.shared
            
            //Create a datatask and pass in the request
            if let cell = cell as? VideoTableViewCell{
                let dataTask = session.dataTask(with: urlRequest, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) ->Void in
                
                // Move to a background thread to do some long running work
                DispatchQueue.global(qos: .background).async {
                    if  let data = data, let image = UIImage(data: data) {
                        
                        // Bounce back to the main thread to update the UI
                        DispatchQueue.main.async { cell.videoImageView.image = image }
                    }
                }
            })
            
            dataTask.resume()
            }
        }
    }
    
}

















