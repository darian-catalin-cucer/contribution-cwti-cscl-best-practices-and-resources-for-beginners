import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PasswordChecker {
    public static boolean isPasswordStrong(String password) {
        if (password.length() < 8) {
            return false;
        }
        Pattern pattern = Pattern.compile("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]+$");
        Matcher matcher = pattern.matcher(password);
        return matcher.matches();
    }
}
