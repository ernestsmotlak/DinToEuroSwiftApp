import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var field1: UITextField!
    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Change font of all buttons on the view controller
        for button in view.subviews.compactMap({ $0 as? UIButton }) {
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20).withSize(18)
        }
    }

    @IBAction func myButton(_ sender: UIButton) {
        guard let firstValue = Double(field1.text ?? "") else {
            label1.text = "Invalid input"
            return
        }
        
        let outputValue = firstValue / 117.68 + 0.01
        
        let formattedOutput = String(format: "%.2f", outputValue)
        
        label1.text = "\(formattedOutput) €"
        
        field1.resignFirstResponder()
    }
}
