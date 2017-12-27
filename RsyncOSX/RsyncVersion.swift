//
//  RsyncVersion.swift
//  RsyncOSX
//
//  Created by Thomas Evensen on 26.12.2017.
//  Copyright © 2017 Thomas Evensen. All rights reserved.
//

import Foundation

final class RsyncVersion: ProcessCmd {

    var outputprocess: OutputProcess?

    init (outputprocess: OutputProcess?) {
        super.init(command: nil, arguments: ["--version"])
        if ViewControllerReference.shared.norsync == false {
            self.updateDelegate = nil
            self.outputprocess = outputprocess
            self.executeProcess(outputprocess: outputprocess)
        }
    }
}
