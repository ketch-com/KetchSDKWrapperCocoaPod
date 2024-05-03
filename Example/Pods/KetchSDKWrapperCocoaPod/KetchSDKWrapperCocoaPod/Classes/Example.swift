import KetchSDK
import SwiftUI

// Example use of the Ketch SDK class
let ketch = KetchSDK.create(
    organizationCode: "ketch_samples",
    propertyCode: "ios",
    environmentCode: "production",
    identities: [
        Ketch.Identity(key: "idfa", value: "00000000-0000-0000-0000-000000000000")
    ]
)

// Example use of the KetchUI class
let ketchUI = KetchUI(
    ketch: ketch,
    experienceOptions: [
        .forceExperience(.consent)
    ]
)

// Print variables to avoid linter warnings
print(ketch)
print(ketchUI)
