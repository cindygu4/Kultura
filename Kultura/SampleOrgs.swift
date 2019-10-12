//
//  SampleOrgs.swift
//  Kultura
//
//  Created by Jasmine Wang on 10/12/19.
//  Copyright © 2019 Cindy Gu. All rights reserved.
//

import Foundation

final class SampleOrgs {
    static func generateOrgsData(region: String) -> [Organization] {
        if region == "Asia" {
            return [
                Organization(name: "CASA")
            ]
        }
        else {
            return [
                Organization(name: "Brazil")
            ]
        }
    }
}
