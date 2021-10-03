
package com.Algorithm;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

import weka.classifiers.functions.LibSVM;
import weka.core.Attribute;
import weka.core.DenseInstance;
import weka.core.Instance;
import weka.core.Instances;
import weka.core.converters.ConverterUtils.DataSource;

public class SupportVectorMachine {
	public static Instances data;

    public static void save(LibSVM model, String path) throws IOException {
        FileOutputStream fileOut = new FileOutputStream(path);
        ObjectOutputStream out = new ObjectOutputStream(fileOut);
        out.writeObject(model);
        out.close();
    }

    public static LibSVM load(String path) {
        try {
            FileInputStream fileIn = new FileInputStream(path);
            ObjectInputStream in = new ObjectInputStream(fileIn);
            System.out.println("Try to load model... from " + path);
            long startTime = System.currentTimeMillis();
            Object obj = in.readObject();
            System.out.print("Load model done. "
                    + (System.currentTimeMillis() - startTime) / 1000 + "s");
            in.close();
            fileIn.close();
            if (obj instanceof LibSVM) {
                System.out.println("Using model from: " + path);
                return (LibSVM) obj;
            } else
                return null;
        } catch (FileNotFoundException e1) {
            System.err.println("Warning: File not found, retrain model...");
            return null;
        } catch (ClassNotFoundException e) {
            System.err.println("Class not found, retrain model...");
            return null;
        } catch (IOException e) {
            System.err.println("Can't read object. retrain model...");
            return null;
        }
    }
}
    

    
