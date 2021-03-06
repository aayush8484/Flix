//
//  DetailViewController.swift
//  Flix
//
//  Created by Pujan Thapa on 2/11/18.
//  Copyright © 2018 Aayush Gupta. All rights reserved.
//

import UIKit

enum MovieKeys{
    static let title = "title"
    static let backdropPath = "backdrop_path"
    static let poseterPath = "poster_path"
}

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backDropImageVIew: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    var movie: Movie?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let movie = movie{
            titleLabel.text = movie.title
            releaseDateLabel.text = movie.releaseDate
            overviewLabel.text = movie.overview
            backDropImageVIew.af_setImage(withURL: movie.backDropURL!)
            posterImageView.af_setImage(withURL: movie.posterUrl!)
            
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
