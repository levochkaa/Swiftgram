import Foundation
import Display
import SwiftSignalKit

public protocol ContactSelectionController: ViewController {
    var result: Signal<([ContactListPeer], ContactListAction, Bool, Int32?, NSAttributedString?, ChatSendMessageActionSheetController.SendParameters?)?, NoError> { get }
    var displayProgress: Bool { get set }
    var dismissed: (() -> Void)? { get set }
    var presentScheduleTimePicker: (@escaping (Int32) -> Void) -> Void { get set }
    
    func dismissSearch()
}
