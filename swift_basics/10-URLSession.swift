// Tutorial API call: fetch list of movies

// Swift helper library for serializing and deserialising JSON (Codable), and fetching data (URLSession)
import Foundation

// 1. Data model
// Using Codable protocol to serialize json properties to our structured data model
// Goal: convert JSON into Swift structured data

// Single movie
struct Movie: Codable {
  let title: String
  let year: String 
  let poster: String
  let imdbID: String

  // CodingKeys is a specia enum helper to help us map JSON keys to our Swift properties
  // HM: No pressure to understand this part, just memorise this
  enum CodingKeys: String, CodingKey {
    case title = "Title"
    case year = "Year"
    case poster = "Poster"
    case imdbID
  }
}

// Our JSON response from API may come as an array within a property: For example
// {
//     "Search": [
//         {
//             "Title": "The Matrix",
//             "Year": "1999",
//             "imdbID": "tt0133093"
//         },
//         {
//             "Title": "The Matrix Reloaded",
//             "Year": "2003",
//             "imdbID": "tt0234215"
//         }
//     ]
// }
// Wrap it a container struct
struct MovieResponse: Codable {
  let search: [Movie]?
  let error: String?

  enum CodingKeys: String, CodingKey {
    case search = "Search"
    case error = "Error"
  }
}

// Fetch data
let fetchMovies: (String) async throws -> [Movie] = { query in
  let apiKey = "abc7322f"
  // helper to add space %20 encoding to url e.g. die hard -> die%20hard
  let urlString = "https://www.omdbapi.com/?s=\(query.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")&apikey=\(apiKey)"
  // URL helper turn string into a URL
  guard let url = URL(string: urlString) else {
    // Special URL error enum that init with case badURL code
    throw URLError(.badURL)
  }

  // URLSession returns a tuple of data and response, we dont need the response so _
  let (data, _) = try await URLSession.shared.data(from: url)

  // deserialise JSOn response into MovieResponse struct
  let decodedData = try JSONDecoder().decode(MovieResponse.self, from: data)

  // If response successful otherwise empty array if no results
  return decodedData.search ?? []
}

do {
  let movies = try await fetchMovies("die hard")
  if movies.isEmpty {print("No results")}

  for movie in movies {
    print("Title: \(movie.title)")
  }
} catch {
  print("Error: \(error)")
}

