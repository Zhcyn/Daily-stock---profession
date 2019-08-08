import UIKit
import Charts
class coinTableViewCell: UITableViewCell {
    @IBOutlet weak var coinName: UILabel!
    @IBOutlet weak var coinChart: LineChartView!
    @IBOutlet weak var coinPrice: UILabel!
    @IBOutlet weak var smallCoinName: UILabel!
    @IBOutlet weak var coinImage: UIImageView!
    @IBOutlet weak var numberCell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }    
}
