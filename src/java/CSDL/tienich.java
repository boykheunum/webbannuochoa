/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import java.io.File;
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

    public static String inputFile(List fieldItems, String inputName) throws Exception {
        Iterator i = fieldItems.iterator();
        while (i.hasNext()) //lặp các input submit từ form
        {
            FileItem fi = (FileItem) i.next();
            String fieldName = fi.getFieldName();
            if (fieldName.equalsIgnoreCase(inputName)) {
                if (fi.isFormField()) //nếu là input thường
                {
                    return fi.getString("UTF-8");
                } else //nếu là input dạng file
                {
                    String fileName = fi.getName();
                    if (fileName.equals("") == false) {
                        File file = new File(filePath + fileName);
                        fi.write(file);
                    }
                    return fileName;
                }
            }
        }
        return "";
    }

    public static List Uploads(HttpServletRequest request, String folder) {
      int maxFileSize = 5000 * 1024;
      int maxMemSize = 5000 * 1024;
      ServletContext context = request.getServletContext();
      String curPath = context.getRealPath("/");
      filePath = curPath + folder ;//thư mục chứa file upload từ trình duyệt lên
      DiskFileItemFactory factory = new DiskFileItemFactory();
      factory.setSizeThreshold(maxMemSize);
      factory.setRepository(new File(curPath));
      ServletFileUpload upload = new ServletFileUpload(factory);
      upload.setSizeMax( maxFileSize );
      List FieldItems=null;
        try {
            FieldItems = upload.parseRequest(request);
        } catch (FileUploadException ex) {
            Logger.getLogger(tienich.class.getName()).log(Level.SEVERE, null, ex);
        }
        
      return FieldItems;
    }
}
