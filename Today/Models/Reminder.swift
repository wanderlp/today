//
//  Reminder.swift
//  Today
//
//  Created by Wanderson López on 3/05/22.
//

import Foundation

struct Reminder {
    var title: String
    var dueDate: Date
    var notes: String? = nil
    var isComplete: Bool = false
}

#if DEBUG
extension Reminder {
    
}
#endif
