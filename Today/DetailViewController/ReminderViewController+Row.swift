//
//  ReminderViewController+Row.swift
//  Today
//
//  Created by Wanderson López on 9/05/22.
//

import UIKit

extension ReminderViewController {
    enum Row: Hashable {
        case viewDate
        case viewNotes
        case viewTime
        case viewTitle
        
        var imageName: String? {
            switch self {
            case .viewDate: return "calendar.circle"
            case .viewNotes: return "square.and.pencil"
            case .viewTime: return "clock"
            default: return nil
            }
        }
    }
}
