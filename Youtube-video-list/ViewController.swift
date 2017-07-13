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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell")!
        
        //Customize the cell to display the video tytle
        cell.textLabel?.text = "video title"
        
        return cell
    }
}

