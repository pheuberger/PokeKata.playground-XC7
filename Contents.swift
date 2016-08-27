import Foundation
import XCTest

// Infrastructure
struct Point {
  let x: Double
  let y: Double
  
  init(_ x: Double, _ y: Double) {
    self.x = x
    self.y = y
  }
  
  func distance(to other: Point) -> Double {
    return sqrt((self.x - other.x)^2 + (self.y - other.y)^2)
  }
}

infix operator ^ { associativity left precedence 160 }
func ^(lhs: Double, rhs: Double) -> Double {
  return pow(lhs, rhs)
}

class PointTests: XCTestCase {
  func testDistance1() {
    let sut = Point(1, 1).distance(to: Point(1, 2))
    XCTAssertEqual(sut, 1)
  }
  
  func testDistance1Point4() {
    let sut = Point(0, 0).distance(to: Point(1, 1))
    XCTAssertEqualWithAccuracy(sut, 1.4, accuracy: 0.015)
  }
}

// Pokestuff
enum PokeType {
  case Flying
  case Poison
  case Normal
  case Water
  case Ice
}

struct Pokemon {
  let name: String
  let type: PokeType
  let location: Point
  
  init(_ name: String, type: PokeType, loc: Point) {
    self.name = name
    self.type = type
    self.location = loc
  }
}

let mons = [Pokemon("Pidgey",   type: .Flying, loc: Point(27, 90)),
            Pokemon("Nidoran",  type: .Poison, loc: Point(66, 12)),
            Pokemon("Bell",     type: .Poison, loc: Point(99, 99)),
            Pokemon("Magikarp", type: .Water,  loc: Point(0, 8)),
            Pokemon("Rattata",  type: .Normal, loc: Point(5, 30)),
            Pokemon("Mewtwo",   type: .Normal, loc: Point(24, 12)),
            Pokemon("Rattata",  type: .Normal, loc: Point(80, 44)),
            Pokemon("Zubat",    type: .Normal, loc: Point(81, 46)),
            Pokemon("Lapras",   type: .Ice,    loc: Point(20, 94))]

let playerLocation = Point(4, 3)


// Here's space for your creative solution

// Tests
class PokeDistanceTests: XCTestCase {
  func testFindShortestDistanceToPokemon() {
    //XCTAssertEqualWithAccuracy(YOUR CODE, 21.9, accuracy: 0.1)
  }
  
  func testFindNearestPokemonName() {
    //XCTAssertEqual(YOUR CODE, "Mewtwo")
  }
}
















// Test Execution
let observer = PlaygroundTestObserver()
let center = XCTestObservationCenter.sharedTestObservationCenter()
let runner = TestRunner()
center.addTestObserver(observer)

runner.runTests(PointTests)
runner.runTests(PokeDistanceTests)
