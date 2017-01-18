import Bitset;
import Swimsuit;


  func testAddPerformance() {
    let nano = Swimsuit.nanotime() {
      let b = Bitset();
      for i in stride(from: 0, to: 100_000_000, by: 100){
          b.add(i)
      }
    }
    print("testAddPerformance ", Double(nano) / 1_000_000.0, " ms")
  }

  func testCountPerformance() {
    let b1 = Bitset();
    for i in stride(from: 0, to: 100_000_000, by: 100){
          b1.add(i)
    }
    let nano = Swimsuit.nanotime() {
      let _ = b1.count();
    }
    print("testCountPerformance ", Double(nano) / 1_000_000.0, " ms")
  }


  func testIteratorPerformance() {
    let b1 = Bitset();
    for i in stride(from: 0, to: 100_000_000, by: 100){
          b1.add(i)
    }
    var sum = 0;
    let nano = Swimsuit.nanotime() {
      for _ in  b1 {
        sum += 1;
      }
    }
    print("testIteratorPerformance ", Double(nano) / 1_000_000.0, " ms")
  }

testAddPerformance();
testCountPerformance();
testIteratorPerformance();
