import UIKit

protocol ColorpickerProtocol: class {
    func applyColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {
    
    @IBOutlet weak var viewColor: UIView!
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    weak var reference: MessageViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func chooseColor(_ sender: UIButton) {
        reference?.applyColor(color: viewColor.backgroundColor!)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        viewColor.backgroundColor = UIColor(displayP3Red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1.0)
    }
    
}
