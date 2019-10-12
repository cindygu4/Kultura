//
//  SampleEvents.swift
//  Kultura
//
//  Created by Jasmine Wang on 10/12/19.
//  Copyright © 2019 Cindy Gu. All rights reserved.
//

import Foundation

final class SampleEvents {

   
  static func generateEventsData() -> [Event] {
    return [
      Event(name: "Dumpling making", time: "1pm", date: "October 11, 2019", description: "Come make dumplings with us!"),
      Event(name: "Scavenger hunt", time: "1pm", date: "October 13, 2019", description: "Come for a chance to earn some prizes!"),
    ]
  }
}
