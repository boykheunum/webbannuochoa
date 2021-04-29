/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Nguyen Tien Dat
 */
public class tienich {

    public static String filePath = "";

    public static String inputFile(List fileItemList, String inputFile) throws UnsupportedEncodingException, Exception {
        Iterator i = fileItemList.iterator();
        while (i.hasNext()) {
            FileItem fileItemName = (FileItem) i.next();
            String fieldName = fileItemName.getFieldName();
            if (fieldName.equalsIgnoreCase(inputFile)) {
                if (fileItemName.isFormField()) {
                    return fileItemName.getString("UTF-8");
                } else {
                    String fileName = fileItemName.getName();
                    if (fieldName.equals("") == false) {
                        File file = new File(filePath + fileName);
                        fileItemName.write(file);
                    }
                    return fileName;
                }
            }
        }
        return "";
    }

    public static List Uploads(HttpServletRequest request, String folder) {
        int maxSizeFile = 1024 * 5000;
        int maxMemSize = 1024 * 5000;
        
        ServletContext context = request.getServletContext();
        String curPath = context.getRealPath("/");
        filePath = filePath + folder;
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(maxMemSize);
        factory.setRepository(new File(filePath));
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setSizeMax(maxSizeFile);
        List FileItem = null;
        return FileItem;
    }
}
