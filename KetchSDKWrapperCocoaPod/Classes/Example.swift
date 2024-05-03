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

// Example custom listener that simply logs all events
class ExampleKetchEventListener: KetchEventListener {
    func onLoad() {
        print("UI Loaded")
    }

    func onShow() {
        print("UI Shown")
    }

    func onDismiss() {
        print("UI Dismissed")
    }

    func onEnvironmentUpdated(environment: String?) {
        print("Environment Updated: \(String(describing: environment))")
    }

    func onRegionInfoUpdated(regionInfo: String?) {
        print("Region Info Updated: \(String(describing: regionInfo))")
    }

    func onJurisdictionUpdated(jurisdiction: String?) {
        print("Jurisdiction Updated: \(String(describing: jurisdiction))")
    }

    func onIdentitiesUpdated(identities: String?) {
        print("Identities Updated: \(String(describing: identities))")
    }

    func onConsentUpdated(consent: KetchSDK.ConsentStatus) {
        print("Consent Updated: \(consent)")
    }

    func onError(description: String) {
        print("Error: \(description)")
    }

    func onCCPAUpdated(ccpaString: String?) {
        print("CCPA String Updated: \(String(describing: ccpaString))")
    }

    func onTCFUpdated(tcfString: String?) {
        print("TCF String Updated: \(String(describing: tcfString))")
    }

    func onGPPUpdated(gppString: String?) {
        print("GPP String Updated: \(String(describing: gppString))")
    }
}
