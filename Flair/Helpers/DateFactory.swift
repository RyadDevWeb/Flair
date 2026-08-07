import Foundation

/// Construit une date grégorienne stable en UTC à partir de ses composants.
func makeGregorianDate(year: Int, month: Int, day: Int) -> Date {
    var components = DateComponents()
    components.calendar = Calendar(identifier: .gregorian)
    components.timeZone = TimeZone(secondsFromGMT: 0)
    components.year = year
    components.month = month
    components.day = day

    guard let date = components.date else {
        preconditionFailure(
            "Date grégorienne invalide : \(day)/\(month)/\(year)"
        )
    }

    return date
}
