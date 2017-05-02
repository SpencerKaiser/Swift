import Foundation

public class Utils {
    
    public static func sectionBreak(sectionTitle: String, firstSection: Bool = false) {
        var header = "~~~~~~~~~~~~~~~~~~~~~~ \(sectionTitle.uppercased()) ~~~~~~~~~~~~~~~~~~~~~~\n"
        if (!firstSection) {
            header = "\n\n\n" + header
        }
        print(header)
    }
    
    public static func lineBreak() {
        print("\n~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
    }
    
    public static func randBool() -> Bool {
        // This can be used to avoid an warning being thrown for evaluating a static variable
        return(arc4random_uniform(2) == 1)
    }
}
