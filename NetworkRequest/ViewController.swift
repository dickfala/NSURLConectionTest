//
//  ViewController.swift
//  NetworkRequest
//
//  Created by James on 2014/7/28.
//  Copyright (c) 2014年 james. All rights reserved.
//

import UIKit

class ViewController: UIViewController,NSURLConnectionDataDelegate {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var url = NSURL.URLWithString("https://photoIpAddress.png");
        var request = NSURLRequest(URL: url);
        var connection = NSURLConnection(request: request, delegate: self, startImmediately:true);
        connection.start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func connection(connection: NSURLConnection!, didReceiveData data: NSData!)
    {
        var imageView:UIImageView = UIImageView(frame: CGRectMake(0, 20, 100, 100));
        let image:UIImage = UIImage(data:data);
        imageView.image = image;
        imageView.contentMode = UIViewContentMode.ScaleAspectFit;
        self.view.addSubview(imageView);
    }
}

