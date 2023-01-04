import XCTest
@testable import PetStore

final class PetStoreTests: XCTestCase {
    func testPetStore() throws {
        let _ = PetStoreModule()
        let js = try Data(contentsOf: XCTUnwrap(PetStoreModule.localURL).appendingPathComponent("PetStoreView.js"))
        XCTAssertNotEqual(0, js.count)
    }
}
