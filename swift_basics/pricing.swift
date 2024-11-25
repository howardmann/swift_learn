// Exercise:
// Return local currency pricing based on sqm

let xRates: [String: Double] = [
    "AUDAUD": 1.00,
    "AUDUSD": 0.70,
    "AUDGBP": 0.52,
    "AUDEUR": 0.62
]

let getPrice: ((size: Int, currency: String?)) -> Double = { input in 
  let size = Double(input.size)
  let currency = input.currency ?? "AUDAUD"
  let priceAUD = 0.65

  // Use default AUDAUD exchange rate if invalid
  let exchangeRate = xRates[currency] ?? 1.00
  let price = priceAUD * exchangeRate
  return price * size
}

let price1 = getPrice((size: 10000, currency: "AUDUSD"))
print(price1)

let price2 = getPrice((size: 10000, currency: nil))
print(price2)