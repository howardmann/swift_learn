import Foundation

struct Student: Codable {
  var name: String
  var age: Int
  var year: Int
  var prefect: Bool

  // serializer if model properties different to db
  enum CodingKeys: String, CodingKey {
    case name
    case age
    case year
    case prefect = "isPrefect"
  }  
}