import UIKit

public class EaseCore {
    
    
    /// The most beautiful color for human eye
    public static var easeColor: UIColor {
        return self.colorFromHexString("006736")
    }
    
    /// Allow to convert a 6 digit hexadecimal string into a UIColor instance
    /// - Warning: The "#" (hash) symbol is stripped from the beginning of the string.
    /// - Parameters:
    ///   - hexString: A 6 digit String. Use 6 digits rather than 8 and add ALPHA as a second parameter.
    ///   - alpha: A number between 0.0 and 1.0 to indicate how transparent the color must be
    /// - Returns: A UIColor defined by the `hexString` parameter
    internal class func colorFromHexString(_ hexString: String, alpha: CGFloat = 1.0) -> UIColor {
        
        // buffer vars for  RED GREEN BLUE
        let r, g, b: CGFloat
        
        // Look for hash symbol and skip it
        let offset = hexString.hasPrefix("#") ? 1 : 0
        let start  = hexString.index(hexString.startIndex, offsetBy: offset)
        
        // fill the buffer string with own proper hex code
        let hexColor = String(hexString[start...])
        
        // Scanner to scan accros the string
        let scanner = Scanner(string: hexColor)
        var hexNumber: UInt64 = 0
        
        // Extract RGB values
        if scanner.scanHexInt64(&hexNumber) {
            r = CGFloat((hexNumber & 0xff0000) >> 16) / 255
            g = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
            b = CGFloat((hexNumber & 0x0000ff)) / 255
            
            return UIColor(red: r, green: g, blue: b, alpha: alpha)
        }
        
        // Return BLACK
        return UIColor(red: 0, green: 0, blue: 0, alpha: alpha)
    }
    
}
