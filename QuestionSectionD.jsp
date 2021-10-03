<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
</head>
<!-- <body style="background-image: url('images/Forward.jpg');
background-repeat: no-repeat;
 background-attachment: fixed;
  background-size: 100% 100%;"> -->

<marquee width = "100%"> <h2>Welcome To Test Section B </h2> </marquee>
<br>
<br>
 <center><h2>All Question Is Compulsory..No Negative Marking </h2></center>

  <form action="testsectionD" method="post">

    <ol>
    
       <li>
                
                    <h3>Select  Correct choice</h3>
                  
                    <div>
                
                <input type="radio" name="question-1-answers"  value="1" required/>
                        
         <label for="question-1-answers-A">A) I find it easy to manipulate people.</label>
                        
                    </div>
                     <div>
                    
                  <input type="radio" name="question-1-answers"  value="2" required/>
                        
                  <label for="question-1-answers-B">B) I don't like it when I find myself manipulating people.</label>
                        
                    </div>
                    
          
                </li>
                
                <li>
                
                    <h3>Select Correct choice</h3>
                  
                    <div>
                    
                        <input type="radio" name="question-2-answers"  value="1" required/>
                        
                        <label for="question-1-answers-A">A)I insist upon getting the respect that is due me. </label>
                        
                    </div>
                    
                    <div>
                    
                        <input type="radio" name="question-2-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)I usually get the respect that I deserve</label>
                        
                    </div>
                    
          
                </li>
                
                
                <li>
                
                    <h3>Select Correct Choice</h3>
                  
                    <div>
                    
                        <input type="radio" name="question-3-answers"  value="1" required/>
                        
                        <label for="question-1-answers-A">A)I don't particularly like to show off my body. </label>
                        
                    </div>
                    
                    <div>
                    
                        <input type="radio" name="question-3-answers"  value="2" required/>
                        
                   <label for="question-1-answers-B">B)I like to show off my body. </label>
                        
                    </div>
                    
                     </li>
                
                
               <li>
                
                    <h3>Select choice</h3>
                  
                    <div>
                    
                        <input type="radio" name="question-4-answers"  value="1" required/>
                        
                        <label for="question-1-answers-A">A)I can read people like a book. </label>
                        
                    </div>
                    
                    <div>
                    
                        <input type="radio" name="question-4-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)People are sometimes hard to understand. </label>
                        
                    </div>
                    
          
                </li>
                
                
                <li>
                
                    <h3>Select Choice</h3>
                  
                    <div>
                    
                        <input type="radio" name="question-5-answers"  value="1" required/>
                        
                        <label for="question-1-answers-A">A)If I feel competent I am willing to take responsibility for making decisions. </label>
                        
                    </div>
                    
                    <div>
                    
                        <input type="radio" name="question-5-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)I like to take responsibility for making decisions. </label>
                        
                    </div>
                    
          
                </li>
                
                <li>
                
                    <h3>Select choice</h3>
                  
                    <div>
                    
                        <input type="radio" name="question-6-answers"  value="1" required/>
                        
                        <label for="question-1-answers-A">A)I just want to be reasonably happy </label>
                        
                    </div>
                    
                    <div>
                    
                        <input type="radio" name="question-6-answers" value="2" required/>
                        
                        <label for="question-1-answers-B">B)I want to amount to something in the eyes of the world.  </label>
                        
                    </div>
                    
          
                </li>
                
                
                <li>
                
                    <h3>Select choice</h3>
                  
                    <div>
                    
                        <input type="radio" name="question-7-answers"  value="1" required/>
                        
                        <label for="question-1-answers-A"> A)My body is nothing special</label>
                        
                    </div>
                    
                    <div>
                    
                        <input type="radio" name="question-7-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B"> B)I like to look at my body.</label>
                        
                    </div>
                    
                     <li>
                
                    <h3>Select choice</h3>
                  
                    <div>
                    
                        <input type="radio" name="question-8-answers"  value="1" required/>
                        
                        <label for="question-1-answers-A"> A)I try not to be a show off</label>
                        
                    </div>
                    
                    <div>
                    
                        <input type="radio" name="question-8-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B"> B)I will usually show off if I get the chance.</label>
                        
                    </div>
                    
                    
                    <li>
                
                    <h3>Select choice</h3>
                  
                    <div>
                    
                        <input type="radio" name="question-9-answers"  value="1" required/>
                        
                        <label for="question-1-answers-A">A)I always know what I am doing</label>
                        
                    </div>
                    
                    <div>
                    
                        <input type="radio" name="question-9-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)Sometimes I am not sure of what I am doing.</label>
                        
                    </div>
                    
                    <li>
                
                    <h3>Select choice</h3>
                  
                    <div>
                    
                        <input type="radio" name="question-10-answers"  value="1" required/>
                        
                        <label for="question-1-answers-A">A)Sometimes I tell good stories </label>
                        
                    </div>
                    
                    <div>
                    
                        
                        <input type="radio" name="question-10-answers"  value="2" required/>
                        
                        <label for="question-1-answers-B">B)Everybody likes to hear my stories.</label>
                        
                    </div>
                    
                    
                    
                    <li>
                
                    <h3>Select choice</h3>
                  
                    <div>
                    
                        <input type="radio" name="question-11-answers" value="1" required/>
                        
                        <label for="question-1-answers-A">A)I expect a great deal from other people</label>
                        
                    </div>
                    
                    <div>
                    
                   <input type="radio" name="question-11-answers"  value="2" required/>
                        
                   <label for="question-1-answers-B">B)I like to do things for other people.</label>
                        
                    </div>
                    
                   </li>
                   
                </ol>
                
                 <center> <button class="button" style="vertical-align:middle"><span>Submit Exam</span></button></center>

</form>
</body>
</html> 