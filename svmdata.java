package com.Algorithm;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpSession;
import com.model.arfffile;
import weka.classifiers.functions.LibSVM;
import weka.core.Attribute;
import weka.core.DenseInstance;
import weka.core.Instance;
import weka.core.Instances;
import weka.core.converters.ConverterUtils.DataSource;

public class svmdata 

{

	public static String svm(arfffile arff) throws IOException 

  {
	
	String output = null;
	
	DataSource source = null;
	
	try 

	{
		 source = new DataSource("D://phytest//PhyTest//WebContent//dataset//arfffile.arff");
	}
	
	catch (Exception e3) 
	
	{
		
		e3.printStackTrace();
	}
    
	Instances data = null;
	
	try 
	
	{
		data = source.getDataSet();
	
	}    catch (Exception e2) {
		 e2.printStackTrace();
	}
	
        if (data.classIndex() == -1)
    	  
        data.setClassIndex(data.numAttributes() - 1);
   
        System.out.println(data.classIndex());

       LibSVM svmClassifier = null;  

    
    if (svmClassifier == null) {
        svmClassifier = new LibSVM();
        
      
        System.out.println("start training... ");
      
        try 
        
        {
        	
	     svmClassifier.buildClassifier(data);
		
        } 
        
        catch (Exception e1)
        
        {
			
			e1.printStackTrace();
		}
        
        SupportVectorMachine.save(svmClassifier, "./svm.model");
       
        Instance inst = new DenseInstance(5);
        
                
		Attribute sectiona = new Attribute("sectiona", 0);
		Attribute sectionb = new Attribute("sectionb", 1);
		Attribute sectionc = new Attribute("sectionc", 2);
		Attribute sectiond = new Attribute("sectiond", 3);
		
		inst.setValue(sectiona,arff.getSectionA());
		inst.setValue(sectionb,arff.getSectionB());
		inst.setValue(sectionc,arff.getSectionC() );
		inst.setValue(sectiond,arff.getSectionD() );
		
		
		inst.setDataset(data);
		
		try 
		
		{
			
			int i= (int)svmClassifier.classifyInstance(inst);
			
			Attribute classAttribute= data.classAttribute();
			
			System.out.println("Predicted Class is : "+ classAttribute.value(i).toString());
			
			output  =  classAttribute.value(i).toString();
			
			System.out.println("output as =====>"+output);
			
			} catch (Exception e) {
			
			e.printStackTrace();
			
			}
        
    DataSource test = null;
	
    try
	
    {
	
    test = new DataSource("D://phytest//PhyTest//WebContent//dataset//arfffile.arff");
	
    } catch (Exception e) 
    
    {
		
		e.printStackTrace();
	}
    
    Instances testData = null;
	try 
	{
		testData = test.getDataSet();
	}
	
	catch (Exception e1) {
		
		e1.printStackTrace();
	}
	
    if (testData.classIndex() == -1)
        testData.setClassIndex(testData.numAttributes() - 1);
    int total = 0;
    int right = 0;
    for (int i = 0; i < testData.numInstances(); i++) {
        Instance instance = testData.instance(i);
        System.out.print(testData.classAttribute().value(
                (int) instance.classValue())
                + " -- ");
        double result = 0;
		try {
			result = svmClassifier.classifyInstance(instance);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
       
        System.out.println(testData.classAttribute().value((int) result));
        
        if (Double.compare(result, instance.classValue()) == 0)
           
        right++;
        
        total++;
    }

         System.out.println("accuracy = " + right / (double) total);

    }	
    
	     
       System.out.println("OutputPridication--->"+output);
  
	     return output;

   }
	
        public static void main(String[] args) throws IOException {
	
	}
	
}
