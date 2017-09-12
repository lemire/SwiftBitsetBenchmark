import Bitset
import Swimsuit
import Foundation

  func testAddPerformance() {
    let nano = Swimsuit.nanotime {
      let b = Bitset()
      for i in stride(from: 0, to: 100_000_000, by: 100) {
          b.add(i)
      }
    }
    print("testAddPerformance ", Double(nano) / 1_000_000.0, " ms")
  }

  func testIndexSetAddPerformance() {
    let nano = Swimsuit.nanotime {
      var b = IndexSet()
      for i in stride(from: 0, to: 100_000_000, by: 100) {
          b.insert(i)
      }
    }
    print("testIndexSetAddPerformance ", Double(nano) / 1_000_000.0, " ms")
  }

  func testCountPerformance() {
    let b1 = Bitset()
    for i in stride(from: 0, to: 100_000_000, by: 100) {
          b1.add(i)
    }
    let nano = Swimsuit.nanotime {
      _ = b1.count()
    }
    print("testCountPerformance ", Double(nano) / 1_000_000.0, " ms")
  }

  func testIndexSetCountPerformance() {
    var b1 = IndexSet()
    for i in stride(from: 0, to: 100_000_000, by: 100) {
          b1.insert(i)
    }
    let nano = Swimsuit.nanotime {
      _ = b1.count
    }
    print("testIndexSetCountPerformance ", Double(nano) / 1_000_000.0, " ms")
  }

  func testIteratorPerformance() {
    let b1 = Bitset()
    for i in stride(from: 0, to: 100_000_000, by: 100) {
          b1.add(i)
    }
    var sum = 0
    let nano = Swimsuit.nanotime {
      for _ in  b1 {
        sum += 1
      }
    }
    print("testIteratorPerformance ", Double(nano) / 1_000_000.0, " ms")
  }

  func testIndexSetIteratorPerformance() {
    var b1 = IndexSet()
    for i in stride(from: 0, to: 100_000_000, by: 100) {
          b1.insert(i)
    }
    var sum = 0
    let nano = Swimsuit.nanotime {
      for _ in  b1 {
        sum += 1
      }
    }
    print("testIndexSetIteratorPerformance ", Double(nano) / 1_000_000.0, " ms")
  }

  func testIntersectionPerformance() {
    let b1 = Bitset()
    for i in stride(from: 0, to: 100_000_000, by: 100) {
          b1.add(i)
    }
    let b2 = Bitset()
    for i in stride(from: 0, to: 100_000_000, by: 10) {
          b2.add(i)
    }
    var sum = 0
    let nano = Swimsuit.nanotime {
      sum += (b1 & b2).count()
    }
    print("testIntersectionPerformance ", Double(nano) / 1_000_000.0, " ms")
  }

  func testIndexSetIntersectionPerformance() {
    var b1 = IndexSet()
    for i in stride(from: 0, to: 100_000_000, by: 100) {
          b1.insert(i)
    }
    var b2 = IndexSet()
    for i in stride(from: 0, to: 100_000_000, by: 10) {
          b2.insert(i)
    }
    var sum = 0
    let nano = Swimsuit.nanotime {
      sum += (b1.intersection(b2)).count
    }
    print("testIndexSetIntersectionPerformance ", Double(nano) / 1_000_000.0, " ms")
  }

testAddPerformance()
testIndexSetAddPerformance()

print()

testCountPerformance()
testIndexSetCountPerformance()

print()

testIteratorPerformance()
testIndexSetIteratorPerformance()

print()

testIntersectionPerformance()
testIndexSetIntersectionPerformance()
