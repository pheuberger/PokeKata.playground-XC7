import Foundation
import XCTest

public struct TestRunner {
  public init() {}
  
  public func runTests(testClass:AnyClass) {
    print("Running test suite \(testClass)")
    
    let tests = testClass as! XCTestCase.Type
    let testSuite = tests.defaultTestSuite()
    testSuite.runTest()
    let run = testSuite.testRun as! XCTestSuiteRun
    
    print("Ran \(run.executionCount) tests in \(run.testDuration)s with \(run.totalFailureCount) failures")
  }
}
