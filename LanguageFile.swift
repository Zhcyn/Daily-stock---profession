import UIKit
class LanguageFile: NSObject {
    final func localizedString(str: String) -> String {
        if let lang = UserDefaults.standard.string(forKey: "Language") {
            return str.localized(lang: lang)
        }
        return str.localized(lang: "en")
    }
}
extension String{
    func localized(lang: String) -> String{
        let path = Bundle.main.path(forResource: lang, ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}
