//
// Created by osushi on 2022/05/03.
//

import Foundation

public func projectRename(currentName: String, newName: String) {
    let xpr = XcodeProjectRenamer(oldName: currentName, newName: newName)
    xpr.run()
}
