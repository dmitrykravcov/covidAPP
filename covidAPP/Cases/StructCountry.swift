import Foundation
import UIKit

struct Country: Decodable {
    var country: String
    var infected: Int?
    var recovered: Int?
    var deceased: Int?

    private enum CodingKeys: String, CodingKey {
            case infected,
                 recovered,
                 country,
                 deceased
        }

    init(country: String? = nil,
         infected: Int? = nil,
         recovered: Int? = nil,
         deceased: Int? = nil) {
            self.country = country!
            self.infected = infected!
            self.recovered = recovered!
            self.deceased = deceased!

    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        country = try container.decode(String.self, forKey: .country)
        infected = try? container.decode(Int.self, forKey: .infected)
        recovered = try? container.decode(Int.self, forKey: .recovered)
        deceased = try? container.decode(Int.self, forKey: .deceased)
    }
    
}
