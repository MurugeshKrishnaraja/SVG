//
//  ViewController.swift
//  SVG
//
//  Created by Lakshman S on 7/4/18.
//  Copyright © 2018 Lakshman S. All rights reserved.
//

import UIKit
import SVGKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setSVGImage(isLoadingPdfImage: false)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
   //   let imager = UIImage(svgNamed: "ACActivity.svg", targetSize: CGSize(width: 200, height: 200), fill: UIColor.white)
       

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setSVGImage(isLoadingPdfImage:Bool){
        
        if isLoadingPdfImage{
            imageView.image = UIImage(named: "Image")
        }else{
            let namSvgImgVar: SVGKImage = SVGKImage(named: "Lion")
            imageView.image = namSvgImgVar.uiImage
        }
        
        
    }

}

