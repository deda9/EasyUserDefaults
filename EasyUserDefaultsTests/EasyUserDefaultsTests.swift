import XCTest


class EasyUserDefaultsTests: XCTestCase {
    
    fileprivate let cash = UserDefaults.standard
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
        clearUserDefaults()
    }
    
    func testDidUserSeeSplashDefaultValue() {
        let defaultValue = cash[.didUserSeeSplash]
        XCTAssertEqual(defaultValue, false)
    }
    
    func testSetDidUserSeeSplash() {
        cash[.didUserSeeSplash] =  true
        let newValue = cash[.didUserSeeSplash]
        XCTAssertEqual(newValue, true)
    }
    
    func testUserNameDefaultValue() {
        let defaultValue = cash[.userName]
        XCTAssertEqual(defaultValue, "Guest")
    }
    
    func testSetUserName() {
        cash[.userName] =  "Jack"
        let newValue = cash[.userName]
        XCTAssertEqual(newValue, "Jack")
    }
    
    func testCouterOfArticleSeenDefaultValue() {
        let defaultValue = cash[.couterOfArticleSeen]
        XCTAssertEqual(defaultValue, 0)
    }
    
    func testSetCouterOfArticleSeen() {
        cash[.couterOfArticleSeen] =  100
        let newValue = cash[.couterOfArticleSeen]
        XCTAssertEqual(newValue, 100)
    }
    
    func testPercentageDefaultValue() {
        let defaultValue = cash[.percentage]
        XCTAssertEqual(defaultValue, 0.0)
    }
    
    func testSetPercentage() {
        cash[.percentage] =  30.8
        let newValue = cash[.percentage]
        XCTAssertEqual(newValue, 30.8)
    }
    
    func testClear() {
        cash.clear()
        let defaultValue =  cash[.percentage]
        XCTAssertEqual(defaultValue, 0.0)
        
    }
}

// MARK: - Helpers
extension EasyUserDefaultsTests {
    fileprivate func clearUserDefaults() {
        cash.clear()
    }
}

extension UserDefaults.Keys {
    
    static let didUserSeeSplash = Key<Bool>("didUserSeeSplash", default: false)
    static let userName = Key<String>("userName", default: "Guest")
    static let couterOfArticleSeen = Key<Int>("couterOfSeen", default: 0)
    static let percentage = Key<Double>("couterOfSeen", default: 0.0)
}
