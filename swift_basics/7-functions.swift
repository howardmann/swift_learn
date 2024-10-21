// FUNCTIONS

// 1. Basic syntax function ===========
// func functionName(param: ParamType) -> ReturnType  {
//  return someValue
// }

func addNumbers(a: Int, b: Int) -> Int {
  return a + b
}
let resultAddNumbers = addNumbers(a: 5, b: 3)
print(resultAddNumbers)

// JS equivalent
// function addNumbers(a,b) {
//   return a + b
// }

// 2. Shorthand syntax function ===========

let addNumbersShort: (Int,Int) -> Int = { $0 + $1 }
let resultAddNumbersShort = addNumbersShort(5, 6)
print(resultAddNumbersShort)

// JS equivalent
// let addNumbersShort = (a,b) => a + b
// let result = addNumbersShort(5,6)

// 3. Shorthand with multiple lines and optional types to handle nil =========
let checkSiteHealth: (Int?) -> String = { number in 
    if number == nil {return "Not onboarded"}
    if (number ?? 0) < 10 {return "Low Alerting"} // fallback to 0
    return "Healthy"
}

let siteHealth = checkSiteHealth(11)
print(siteHealth)

// JS equivalent
// const checkSiteHealth = (number) => {
//   if (number === null || typeof number === 'undefined') { return "Not onboarded" }
//   if (number < 10) { return "Low Alerting" }
//   return "Healthy"
// }