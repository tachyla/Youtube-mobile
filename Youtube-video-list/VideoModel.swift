//
//  VideoModel.swift
//  Youtube-video-list
//
//  Created by TaChyla Murray on 7/12/17.
//  Copyright © 2017 TaChyla Murray. All rights reserved.
//

import UIKit

class VideoModel: NSObject {
    //VideoModel is a method that viewController will call to get Video Objects
    
    //the arrow indicates the data structure that will be returned
    func getVideos() ->[ Video ] {
        
        //create empty array of videos
        var videos = [Video]()
        
        //create video1 object
        let video1 = Video()
        //assignment of properties
        video1.videoId = "jofNR_WkoCE"
        video1.videoTitle  = "Ylvis - The Fox(What does The Fox Say?)"
        video1.videoDescription = "video1"
        
        videos.append(video1)
        
        //create video2 object
        let video2 = Video()
        //assignment of properties
        video2.videoId = "9bZkp7q19f0"
        video2.videoTitle  = "PSY - GANGNAM STYLE"
        video2.videoDescription = "video2"
        
        videos.append(video2)
        
        //create video3 object
        let video3 = Video()
        //assignment of properties
        video3.videoId = "kfVsfOSbJYO"
        video3.videoTitle  = "Rebecca Black - Friday"
        video3.videoDescription = "video3"
        
        videos.append(video3)
        
        //create video4 object
        let video4 = Video()
        //assignment of properties
        video4.videoId = "WDZJPJV_bQ"
        video4.videoTitle  = "Beyonce - Formation"
        video4.videoDescription = "video4"
        
        videos.append(video4)

        //create video5 object
        let video5 = Video()
        //assignment of properties
        video5.videoId = "VBmMU_iwe6U"
        video5.videoTitle  = "Beyonce - Run the World (Girls)"
        video5.videoDescription = "video5"

        
        return videos
        
     }
}
