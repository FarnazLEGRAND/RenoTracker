//
//  PunchListItem+SwiftUI.swift
//  Renotracker
//
//  Created by Farnaz Rismanchian on 08/09/2023.
//

import Foundation
import SwiftUI

extension PunchListItem {
// prends image selon sytatut
    var completionStatusSymbol: Image {
        switch self.status {
        case .complete : return Image(systemName: "checkmark.square")
        case .inProgress : return Image(systemName: "asterisk.circle")
        case .notStarted : return Image(systemName: "square")
        }
    }
}
