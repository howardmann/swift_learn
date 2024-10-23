// Import foundation for swift helper functions like round
import Foundation

// Learning exercises

// Map over object and add new properties rules coverage as a percentage
let sites = [
  ["name": "Site A", "rules": 200, "equip": 100, "alerts": 8 ],
  ["name": "Site B", "rules": 100, "equip": 150, "alerts": 12 ],
  ["name": "Site C", "rules": 50, "equip": 700, "alerts": 18 ]
]

let updatedSites = sites.map{ site in 
  var updatedSite = site

  // access rules and equip cast as Int with fallback
  let rules = Double(site["rules"] as? Int ?? 0)
  let equip = Double(site["equip"] as? Int ?? 1)
  let rulesCoverage = (rules / equip)

  // round to 2 dp
  let roundedCoverage = Double(round(100 * rulesCoverage) / 100)
  updatedSite["rulesCoverage"] = roundedCoverage
  return updatedSite
}

print(updatedSites)

// Create function that checks if site is healthy based on alert count
func checkSiteHealth(alerts: Int) -> String {
  if alerts > 10 { return "Healthy"}
  return "Low Alerting"
}

print(checkSiteHealth(alerts: 11))

// alternative syntax
let checkSiteHealth2: (Int) -> String = { alerts in 
  if alerts > 10 { return "Healthy"}
  return "Low Alerting"
}

print(checkSiteHealth2(1))

// Even shorter syntax
let checkSiteHealth3: (Int) -> String = { alerts in 
  alerts > 10 ? "Healthy" : "Low Alerting"
}
print(checkSiteHealth3(12))

// Combine it now map and use function to add property
let updatedHealthSites = sites.map{ site in 
  var updatedSite = site

  let alerts = site["alerts"] as? Int ?? 0
  let status = checkSiteHealth(alerts: alerts)
  updatedSite["status"] = status
  return updatedSite
}

print(updatedHealthSites)

// Filter sites that are healthy
let healthySites = updatedHealthSites.filter{ site in 
  return site["status"] as? String == "Healthy"
}
print(healthySites)