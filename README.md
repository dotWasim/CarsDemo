# Testing Task

# Conventions
## Naming
I followed this convention for naming tests
`test<What we are testing>_<Condition Or State Change>_<Expected Result>`
Good test names often contain three parts. I like to use underscores to separate these parts and camel case within each part
- What we are testing
- Condition Or State Change
- Expected Result

following this convention allows other developers to read and understand what each test do with no time.
## AAA
In writing tests, I follow a convention I read about in "The Art of Unit Testing: with examples in C#" called AAA (Arrange-Act-Assert). I Separate the Arrange, Act, Assert sections of tests with blank lines. Then each line of test code identifies its purpose.

## Example
```Swift
func testCarsCount_WhenNoOwnerWithThisName_ShouldReturnZero() {
    /// Arrange
    let ownerName = "Not Available Name"

    /// Act
    let ownerRedCars = sut.cars(for: ownerName, withColor: .red)
    let carsCount = ownerRedCars.count

    /// Assert
    XCTAssertTrue(carsCount == 0, "The returned number of \"\(ownerName)\" cars with red color is \(carsCount) but the expected count is zero because owner name is not available in owners list")
}
```
