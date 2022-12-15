//William Eduardo Castillo Lara
//carne 17-4360-2014


import UIKit


class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

  @IBOutlet weak var mypicker: UIPickerView!
  
  @IBOutlet weak var lblnombproduct: ILabel!
  @IBOutlet weak var txtnombproduct: UITextField!
  @IBOutlet weak var lblcategoria: ILabel!
  let pickerData = ["Carnes","Harinas","Aceites"]
  @IBOutlet weak var lblunidades: ILabel!
  @IBOutlet weak var txtunidades: UITextField!
  @IBOutlet weak var lblpreciounitario: ILabel!
  @IBOutlet weak var txtpreciounitario: UITextField!
@IBOutlet weak var lbltotal: ILabel!
  @IBOutlet weak var txttotal: UITextField!


  override func viewDidLoad(){
    super.viewDidLoad()
    mypicker.dataSource=self
    mypicker.delegate=self
  }

  override func didReceiveMemoryWarning(){
    super.didReceiveMemoryWarning()
  }

  //DataSource
  func numberOfComponents(in pickerView: UIPickerView) -> Int{
    return 1
  }

  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component:Int) -> Int{
    return pickerData.count
  }

  //Delegate
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return pickerData[row]
  }
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
    
  }

  @IBAction func agregar(_ sender: UIButton){
    var unidades:Int=0
    var preciounitario:Float=0
    var total:Float=0
   
    unidades=txtunidades.text!
    preciounitario=txtpreciounitario.text!
    total=unidades*preciounitario
    
    txttotal.text=String(total)
  
  }
}