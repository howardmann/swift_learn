import Foundation
// STRUCTURES
// 1. Basic Syntax for Structs ===========
// struct StructureName {
//   var propertyName: PropertyType
//   var propertyName2: PropertyType2
//
//   var computedProperty: PropertyType {}
//      return propertyName ?? 0
//    }
//
//   func methodName() -> ReturnType {
//     // Code logic here
//   }
// }

struct Building {
  var name: String
  var floors: Int
  var yearConstructed: Int? // Optional: could be nil if not provided
  var occupancy: Double? // Optional: could be nil if not provided
}

let officeBuilding = Building(name: "Nakatomi Plaza", floors: 14)
// print(officeBuilding)


// Use computed properties for fallback values or computed properties
struct BuildingComputed {
  var name: String
  var floors: Int
  var yearConstructed: Int? // Optional: could be nil if not provided
  var occupancy: Double? // Optional: could be nil if not provided

  // Computed property with fallback value
  var adjustedOccupancy: Double {
    return occupancy ?? 0.8
  }

  // Computed property
  var age: Int? {
    // Use guard to check and unwrap yearConstructed
    guard let year = yearConstructed else { return nil}

    // Calculate and return the age
    let currentYear = Calendar.current.component(.year, from: Date())
    return currentYear - year
  }

  // Methods
}

let buildingB = BuildingComputed(name: "Starcourt Mall", floors: 14, yearConstructed: 2000)
print(buildingB.age!)