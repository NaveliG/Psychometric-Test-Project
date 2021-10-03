<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
/* body {
  background-image: url('images/third.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
 */</style>
<style>
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: black;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 5px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
<marquee width = "100%"> <h2 style="color:red;">Welcome To Test Section A <h2> </marquee>

<br>
<br>
<center><h2>All Question Is Compulsory..No Negative Marking </h2></center>

      <h3>Select  Correct choice Agree Or Disagree </h3>
       
       <form action="testsectionA" method="post">

              <ol>
               <li>
               
               <h3> I like to stay at home. </h3>
                  
              <div>
                    
             <input type="radio" name="question-1-answers" id="question-1-answers-A" value="1" required/>
                        
             <label for="question-1-answers-A">A)Agree </label>
                        
            </div>
                    
              <div>
                    
               <input type="radio" name="question-1-answers" id="question-1-answers-B" value="2" required/>
                     
                 <label for="question-1-answers-B">B)Disagree </label>
                        
                    </div>
                    
          
                </li>
                
               
                <li>
               
               <h3> I like to make definite plans when going out. </h3>
                  
              <div>
                    
             <input type="radio" name="question-2-answers" id="question-1-answers-A" value="1" required/>
                        
             <label for="question-1-answers-A">A)Agree </label>
                        
            </div>
                    
              <div>
                    
                        <input type="radio" name="question-2-answers" id="question-1-answers-B" value="2" required/>
                        <label for="question-1-answers-B">B)Disagree </label>
                        
               </div>
                    
          
                </li>
                
                 <li>
               
               <h3>I avoid public speaking whenever possible.  </h3>
                  
              <div>
                    
             <input type="radio" name="question-3-answers" value="1" required/>
                        
             <label for="question-1-answers-A">A)Agree </label>
                        
            </div>
                    
                    <div>
                    
                        <input type="radio" name="question-3-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)Disagree </label>
                        
                    </div>
                    
          
                </li>
                  <li>
               
               <h3>I work best in a group or with others.  </h3>
                  
              <div>
                    
             <input type="radio" name="question-4-answers" value="1" required/>
                        
             <label for="question-1-answers-A">A)Agree </label>
                        
            </div>
                    
                    <div>
                    
                        <input type="radio" name="question-4-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)Disagree </label>
                        
                    </div>
                    
          
                </li>
                
                  <li>
               
               <h3> I like to fix things more than I like to try and fix people.  </h3>
                  
              <div>
                    
             <input type="radio" name="question-5-answers"  value="1" required/>
                        
             <label for="question-1-answers-A">A)Agree </label>
                        
            </div>
                    
                    <div>
                    
                        <input type="radio" name="question-5-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)Disagree </label>
                        
                    </div>
                    
          
                </li>
                
                  <li>
               
               <h3> I like tests that have essay questions. </h3>
                  
              <div>
                    
             <input type="radio" name="question-6-answers"  value="1" required/>
                        
             <label for="question-1-answers-A">A)Agree </label>
                        
            </div>
                    
                    <div>
                    
                        <input type="radio" name="question-6-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)Disagree </label>
                        
                    </div>
                    
          
                </li>
                
                  <li>
               
               <h3>I prefer to use logic and reason in my thinking first and foremost.  </h3>
                  
              <div>
                    
             <input type="radio" name="question-7-answers"  value="1" required/>
                        
             <label for="question-1-answers-A">A)Agree </label>
                        
            </div>
                    
                    <div>
                    
                        <input type="radio" name="question-7-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)Disagree </label>
                        
                    </div>
                    
          
                </li>
                
                  <li>
               
               <h3> I like to improvise whenever possible. </h3>
                  
              <div>
                    
             <input type="radio" name="question-8-answers"  value="1" required/>
                        
             <label for="question-1-answers-A">A)Agree </label>
                        
            </div>
                    
                <div>
                    
                        <input type="radio" name="question-8-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)Disagree </label>
                        
                    
                 </div>
                    
          
                </li>
                
                <li>
               
               <h3>Morality should be based on justice.  </h3>
                  
              <div>
                    
             <input type="radio" name="question-9-answers"  value="1" required/>
                        
             <label for="question-1-answers-A">A)Agree </label>
                        
            </div>
                    
                    <div>
                    
                        <input type="radio" name="question-9-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)Disagree </label>
                        
                    </div>
                    
          
                </li>
                  <li>
               
               <h3>I like to rely on my memory.  </h3>
                  
              <div>
                    
             <input type="radio" name="question-10-answers"  value="1" required/>
                        
             <label for="question-1-answers-A">A)Agree </label>
                        
            </div>
                    
                    <div>
                    
                        <input type="radio" name="question-10-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)Disagree </label>
                        
                    </div>
                    
          
                </li>
                
                
                </li>
                  <li>
               
               <h3> I'm bored being alone.  </h3>
                  
              <div>
                    
             <input type="radio" name="question-11-answers"  value="1" required/>
                        
             <label for="question-1-answers-A">A)Agree </label>
                        
            </div>
                    
                    <div>
                    
                        <input type="radio" name="question-11-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)Disagree </label>
                        
                    </div>
                     </li>
          
                </li>
                 <li>
                <h3> I like to be focused on the future.  </h3>
                  
              <div>
                    
             <input type="radio" name="question-12-answers"  value="1" required/>
                        
             <label for="question-1-answers-A">A)Agree </label>
                        
            </div>
                    
                    <div>
                    
                        <input type="radio" name="question-12-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)Disagree </label>
                        
                    </div>
                     </li>
          
                </li>
                 <li>
                <h3>  I like to talk more than I listen. </h3>
                  
              <div>
                    
             <input type="radio" name="question-13-answers"  value="1" required/>
                        
             <label for="question-1-answers-A">A)Agree </label>
                        
            </div>
                    
                    <div>
                    
                        <input type="radio" name="question-13-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)Disagree </label>
                        
                    </div>
                    
          
                </li>
                 <li>
                <h3> I like to follow my head more than my heart.  </h3>
                  
              <div>
                    
             <input type="radio" name="question-14-answers"  value="1" required/>
                        
             <label for="question-1-answers-A">A)Agree </label>
                        
            </div>
                    
                    <div>
                    
                        <input type="radio" name="question-14-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)Disagree </label>
                        
                    </div>
                    
          
                </li>
                <li>
                <h3> I like devoting my all to work.   </h3>
                  
              <div>
                    
             <input type="radio" name="question-15-answers"  value="1" required/>
                        
             <label for="question-1-answers-A">A)Agree </label>
                        
            </div>
                    
                    <div>
                    
                        <input type="radio" name="question-15-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)Disagree </label>
                        
                    </div>
                    
          
                </li>
                
               </ol>
                
      <center> <button class="button" style="vertical-align:middle"><span>Next Section</span></button></center>

</form>
</body>
</html>