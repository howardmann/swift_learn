// Enumnerations
// Common type of associated values of any type

// Example - ticket priority
enum TicketPriority {
  case P1
  case P2
  case P3
  case P4
  case P5
}

var ticketPriorityA = TicketPriority.P5
print(ticketPriorityA) // P5
// Shorthand once an enum is declared you can change it using shorter dot syntax
ticketPriorityA = .P1
print(ticketPriorityA) // P1

// Enum with computed property to return description
enum TicketPriorityDesc {
  case P1, P2, P3, P4, P5 // shorthand syntax

  var description: String {
    switch self {
      case .P1:
        return "Critical issue, immediate resolution."
      case .P2:
        return "Major issue, requires prompt attention."
      case .P3: 
        return "Moderate issue, should be resolved soon."
      case .P4:
        return "Minor issue, no immediate action needed"
      case .P5:
        return "Review, no immediate action."
    }
  }
}

var ticketB = TicketPriorityDesc.P1
print("Enum: \(ticketB). Description: \(ticketB.description)")
ticketB = .P4
print("Enum: \(ticketB). Description: \(ticketB.description)")