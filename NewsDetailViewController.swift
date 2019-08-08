import UIKit
import WebKit
import SafariServices
class NewsDetailViewController: UIViewController{
    var selectedFeedURL: String?
    var textView : UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var isReadMode: UIBarButtonItem!
    @IBOutlet var myWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedFeedURL =  selectedFeedURL?.replacingOccurrences(of: " ", with:"")
        selectedFeedURL =  selectedFeedURL?.replacingOccurrences(of: "\n", with:"")
        self.title = "Cointelegraph.com"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.heavy)]
        self.navigationItem.hidesBackButton = true
    }
    func safariViewControllerFinish(_ controller: SFSafariViewController)
    {
        controller.dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func onDone(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            self.progressView.progress = Float(self.myWebView.estimatedProgress);
            if self.progressView.progress == 1.0 {
                self.progressView.isHidden = true
            }
        }
    }
}
