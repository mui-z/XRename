import SwiftCLI
import Rainbow
import Foundation

public class XRenameCLI {
    public init() {
    }

    public func run() {
        Rainbow.enabled = Term.isTTY

        let cli = CLI(singleCommand: XRename())

        cli.go()
    }
}
