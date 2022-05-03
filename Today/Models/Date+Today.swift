//
//  Date+Today.swift
//  Today
//
//  Created by Wanderson López on 3/05/22.
//

import Foundation

extension Date {
    var dayAndTimeText: String {
        // The system formats the string representation of the
        // date and time for the current locale using a default
        // style. Passing .ommited for the date style creates a
        // string of only the time component
        let timeText = formatted(date: .omitted, time: .shortened)
        
        if Locale.current.calendar.isDateInToday(self) {
            // NSLocalizedString function create a formatted time
            // string, and assign the result to a constant named
            // timeFormat
            let timeFormat = NSLocalizedString("Today at %@", comment: "Today at time format string")
            return String(format: timeFormat, timeText)
        } else {
            // In this case the formatted method uses a custom date
            // format style to create a representation of the date
            // that is appropiate for the user's current locale
            let dateText = formatted(.dateTime.month(.abbreviated).day())
            let dateAndTimeFormat = NSLocalizedString("%@ at %@", comment: "Date and time format string")
            return String(format: dateAndTimeFormat, dateText, timeText)
        }
    }
}
