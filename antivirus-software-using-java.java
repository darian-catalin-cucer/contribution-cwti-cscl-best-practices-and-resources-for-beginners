import java.io.File;
import java.io.IOException;
import org.apache.commons.io.FileUtils;

public class Antivirus {
    private static final String VIRUS_SIGNATURE = "malware123";

    public static boolean isInfected(File file) throws IOException {
        String fileContent = FileUtils.readFileToString(file, "UTF-8");
        return fileContent.contains(VIRUS_SIGNATURE);
    }

    public static void removeVirus(File file) throws IOException {
        String fileContent = FileUtils.readFileToString(file, "UTF-8");
        fileContent = fileContent.replaceAll(VIRUS_SIGNATURE, "");
        FileUtils.writeStringToFile(file, fileContent, "UTF-8");
    }
}
