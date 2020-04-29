//Created  on 2019/3/12 by  LCD:https://github.com/liucaide .

/***** 模块文档 *****
 *
 */



import Foundation
import UIKit
import CaamDauCalendar

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        CD_DatePickerAlert.show(.yyyyMMdd, date: Date(), preferredStyle: .sheet, callback: { (da) in
            
        }) {
            $0.minDate = "2019-3-10".cd_date("yyyy-MM-dd")!
            $0.maxDate = "2020-11-20".cd_date("yyyy-MM-dd")!
        }
    }
}



