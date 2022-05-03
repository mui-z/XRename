//
// Created by osushi on 2022/05/03.
//

import Foundation
import SwiftCLI
import XRenameKit

class XRename: Command {

    let name = "xrename"
    let shortDescription = "xcode project/workspace renamer."

    @Param
    var currentName: String

    @Param
    var newName: String

    func execute() throws {
        projectRename(currentName: currentName, newName: newName)
    }
}