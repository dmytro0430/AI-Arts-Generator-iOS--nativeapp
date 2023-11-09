//
//  ViewController.swift
//  AIArtGenerator
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        poplarMoviesApi()
    }


}

extension ViewController{
    func poplarMoviesApi() {
        let request = PopluarRequest(apikey: "7e8a76c1bd818cc68473abb1e5fc2a20")
        
        NetworkManager.request(endpoint: .popular(request), requestType: .authenticated) { (result: Result<MovieResponse, NetworkError>) in
            switch result {
            case .success(let movies):
                print("Successfully received movies: \(movies)")
            case .failure(let error):
                print("Error: \(error.localizedDescription)")
            }
        }
    }
}

struct PopluarRequest: Encodable{
    var apikey: String
}

struct MovieResponse: Codable {
    let page, totalResults, totalPages: Int?
    let results: [MovieResult]?
    
    enum CodingKeys: String, CodingKey {
        case page
        case totalResults = "total_results"
        case totalPages = "total_pages"
        case results
    }
}

// MARK: - Result
struct MovieResult: Codable {
    let popularity: Double?
    let voteCount: Int?
    let video: Bool?
    let posterPath: String?
    let id: Int?
    let adult: Bool?
    let backdropPath: String?
    let originalTitle: String?
    let genreIDS: [Int]?
    let title: String?
    let voteAverage: Double?
    let overview, releaseDate: String?
    
    enum CodingKeys: String, CodingKey {
        case popularity
        case voteCount = "vote_count"
        case video
        case posterPath = "poster_path"
        case id, adult
        case backdropPath = "backdrop_path"
        case originalTitle = "original_title"
        case genreIDS = "genre_ids"
        case title
        case voteAverage = "vote_average"
        case overview
        case releaseDate = "release_date"
    }
}

enum OriginalLanguage: String, Codable {
    case en = "en"
    case ko = "ko"
}


