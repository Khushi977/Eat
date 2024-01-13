package com.tech.blog.dao;

import com.tech.blog.entities.User;
import java.sql.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
public class UserDao {
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    
    //to insert user into database:
    //FUNCTION FOR SIGNUP A USER
    public boolean saveUser(User user){
    boolean f=false;
    
        try{
        
        //user --> Database
       
        String query ="insert into SIGNUPDATA (UNAME,UEMAIL,UPASSWORD,UQUESTION,UANSWER) values (?,?,?,?,?)";
        PreparedStatement pstmt = this.con.prepareStatement(query);
        
            pstmt.setString(1, user.getUNAME());
            pstmt.setString(2, user.getUEMAIL());
            pstmt.setString(3, user.getUPASSWORD());
            pstmt.setString(4, user.getUQUESTION());
            pstmt.setString(5,user.getUANSWER());
            
            
            pstmt.executeUpdate();
            f=true;
        
        
        }
        catch(Exception e)
        {
        e.printStackTrace();
        System.out.println("Exception: " + e.getMessage()); // Log the exception message
        
        }
        
        return f;    
        
    }
    
    //get user by useremail and userpassword
    //FUNCTION FOR LOGIN A USER
    public User getUserByEmailAndPassword(String UEMAIL,String UPASSWORD)
    {
    
    User user=null;
    
    try{
        
        String query="select * from SIGNUPDATA where UEMAIL=? and UPASSWORD=?";
         PreparedStatement pstmt = con.prepareStatement(query);
         
         pstmt.setString(1,UEMAIL);
         pstmt.setString(2,UPASSWORD);
         
         ResultSet set=pstmt.executeQuery();
         
         if(set.next())
         {
         user=new User();
         user.setUNAME(set.getString("UNAME"));
          user.setUEMAIL(set.getString("UEMAIL"));
           user.setUPASSWORD(set.getString("UPASSWORD"));
           user.setUQUESTION(set.getString("UQUESTION"));
           user.setUANSWER(set.getString("UANSWER"));
//           user.setUPROFILE(set.getString("UPROFILE"));
//           user.setUQUESTION(set.getString("UQUESTION"));
//           user.setUANSWER(set.getString("UANSWER"));
           
         }
        
        
    }
    
    
    
    
    catch(Exception e){
        e.printStackTrace();
   
    }
    
    return user;
    
    }
    
    
    
    //FUNCTION FOR UPDATE DETAILS OF A USER USING EDIT BUTTON
    
    public boolean updateUser(User user){
        boolean f=false;
    
    try{ 
     
        
    String query= "update SIGNUPDATA set UNAME=?,UPASSWORD=?,UQUESTION=?,UANSWER=? where UEMAIL=?";   
        
      PreparedStatement p = con.prepareStatement(query);
      p.setString(1,user.getUNAME());
//      p.setString(2,user.getUEMAIL());
      p.setString(2,user.getUPASSWORD());
      p.setString(3,user.getUQUESTION());
      p.setString(4,user.getUANSWER());
      p.setString(5,user.getUEMAIL());
        
      
      p.executeUpdate();
      f=true;
      
      
            
    }
    
    
    catch(Exception e){
    e.printStackTrace();
    
    }
    return f;
    
}
    
    
    
     //FUNCTION FOR UPDATE PASSWORD AFTER FORGET PASSWORD OF A USER
    
    public boolean updateUserPassword(User user) {
    boolean success = false;

    try (PreparedStatement preparedStatement = con.prepareStatement("UPDATE SIGNUPDATA SET UPASSWORD=? WHERE UEMAIL=?")) {
        preparedStatement.setString(1, user.getUPASSWORD());
        preparedStatement.setString(2, user.getUEMAIL());

        int rowsAffected = preparedStatement.executeUpdate();
        success = (rowsAffected > 0); // Check if any rows were affected

    } catch (SQLException e) {
        e.printStackTrace();
    }

    return success;
}

    
    
    
   // FUNCTION FOR INSERT USER FEEDBACK IN THE DATABASE
    public boolean saveUserFeedback(User user){
    boolean f=false;
    
        try{
        
        //user --> Database
       
        String query ="insert into FEEDBACKDATA (UEMAIL,UFEEDBACK) values (?,?)";
        PreparedStatement pstmt = this.con.prepareStatement(query);
        
        
        pstmt.setString(1, user.getUEMAIL());
         pstmt.setString(2, user.getUFEEDBACK());
        
         
            pstmt.executeUpdate();
            f=true;
        
        
        }
        catch(Exception e)
        {
        e.printStackTrace();
        System.out.println("Exception: " + e.getMessage()); // Log the exception message
        
        }
        
        return f;    
        
    }
    
    
    
    // FUNCTION FOR INSERT USER COMPLAINTS IN THE DATABASE
    
    public boolean saveUserComplaints(User user){
    boolean f=false;
    
        try{
        
        //user --> Database
       
        String query ="insert into COMPLAINTSDATA (UEMAIL,UFEEDBACKISSUE,UCOMPLAINTS) values (?,?,?)";
        PreparedStatement pstmt = this.con.prepareStatement(query);
        
        
        pstmt.setString(1, user.getUEMAIL());
        pstmt.setString(2, user.getUFEEDBACKISSUE());
        pstmt.setString(3, user.getUCOMPLAINTS());
        
         
            pstmt.executeUpdate();
            f=true;
        
        
        }
        catch(Exception e)
        {
        e.printStackTrace();
        System.out.println("Exception: " + e.getMessage()); // Log the exception message
        
        }
        
        return f;    
        
    }
    
    
    
    
   
      // FUNCTION FOR INSERT USER BMI FORM DATA IN THE DATABASE
    
    public boolean saveUserDietFormData(User user){
    boolean f=false;
    
        try{
        
        //user --> Database
       
        String query ="insert into DIETFORMINFO (UNAME,UEMAIL,UAGE, UGENDER,UWEIGHT,UDIETPREFERENCE) values (?,?,?,?,?,?)";
        PreparedStatement pstmt = this.con.prepareStatement(query);
        
        
        pstmt.setString(1, user.getUNAME());
        pstmt.setString(2, user.getUEMAIL());
        pstmt.setInt(3, user.getUAGE());
        pstmt.setString(4, user.getUGENDER());
        pstmt.setString(5, user.getUWEIGHT());
        pstmt.setString(6, user.getUDIETPREFERENCE());
        
         
            pstmt.executeUpdate();
            f=true;
        
        
        }
        catch(Exception e)
        {
        e.printStackTrace();
        System.out.println("Exception: " + e.getMessage()); // Log the exception message
        
        }
        
        return f;    
        
    }
    
    
  


     // FUNCTION FOR GETTING NORMAL DIET CHART 
public List<User> getNormalDietChart(String UWEIGHT) {
    List<User> userList = new ArrayList<>();

    try {
        String query = "SELECT * FROM NORMALDIETCHART";
        PreparedStatement pstmt = con.prepareStatement(query);

        ResultSet set = pstmt.executeQuery();

        while (set.next()) {
            User user = new User();
            
            user.setDAYS(set.getString("DAYS"));
            user.setBO1(set.getString("BO1"));
            user.setBO2(set.getString("BO2"));
            user.setBO3(set.getString("BO3"));
            user.setLO1(set.getString("LO1"));
            user.setLO2(set.getString("LO2"));
            user.setLO3(set.getString("LO3"));
            user.setDO1(set.getString("DO1"));
            user.setDO2(set.getString("DO2"));
            user.setDO3(set.getString("DO3"));
            
            userList.add(user);
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

    return userList;
}


//FUNCTION FOR GETTING UNDERWEIGHT DIET CHART

public List<User> getUnderWeightDietChart(String UWEIGHT) {
    List<User> userList = new ArrayList<>();

    try {
        String query = "SELECT * FROM UNDERWEIGHTDIETCHART";
        PreparedStatement pstmt = con.prepareStatement(query);

        ResultSet set = pstmt.executeQuery();

        while (set.next()) {
            User user = new User();
            
            user.setDAYS(set.getString("DAYS"));
            user.setBO1(set.getString("BO1"));
            user.setBO2(set.getString("BO2"));
            user.setBO3(set.getString("BO3"));
            user.setLO1(set.getString("LO1"));
            user.setLO2(set.getString("LO2"));
            user.setLO3(set.getString("LO3"));
            user.setDO1(set.getString("DO1"));
            user.setDO2(set.getString("DO2"));
            user.setDO3(set.getString("DO3"));
            
            userList.add(user);
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

    return userList;
}



//FUNCTION FOR GETTING OVERWEIGHT DIET CHART

public List<User> getOverWeightDietChart(String UWEIGHT) {
    List<User> userList = new ArrayList<>();

    try {
        String query = "SELECT * FROM OVERWEIGHTDIETCHART";
        PreparedStatement pstmt = con.prepareStatement(query);

        ResultSet set = pstmt.executeQuery();

        while (set.next()) {
            User user = new User();
            
            user.setDAYS(set.getString("DAYS"));
            user.setBO1(set.getString("BO1"));
            user.setBO2(set.getString("BO2"));
            user.setBO3(set.getString("BO3"));
            user.setLO1(set.getString("LO1"));
            user.setLO2(set.getString("LO2"));
            user.setLO3(set.getString("LO3"));
            user.setDO1(set.getString("DO1"));
            user.setDO2(set.getString("DO2"));
            user.setDO3(set.getString("DO3"));
            
            userList.add(user);
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

    return userList;
}


  

//FUNCTION FOR GETTING OBESITY DIET CHART

public List<User> getObesityDietChart(String UWEIGHT) {
    List<User> userList = new ArrayList<>();

    try {
        String query = "SELECT * FROM OBESITYDIETCHART";
        PreparedStatement pstmt = con.prepareStatement(query);

        ResultSet set = pstmt.executeQuery();

        while (set.next()) {
            User user = new User();
            
            user.setDAYS(set.getString("DAYS"));
            user.setBO1(set.getString("BO1"));
            user.setBO2(set.getString("BO2"));
            user.setBO3(set.getString("BO3"));
            user.setLO1(set.getString("LO1"));
            user.setLO2(set.getString("LO2"));
            user.setLO3(set.getString("LO3"));
            user.setDO1(set.getString("DO1"));
            user.setDO2(set.getString("DO2"));
            user.setDO3(set.getString("DO3"));
            
            userList.add(user);
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

    return userList;
}



 // FUNCTION FOR INSERT USER APPOINTMENT BOOKINGDATA IN THE DATABASE
    
    public boolean saveUserAppointmentBookingData(User user){
    boolean f=false;
    
        try{
        
        //user --> Database
       
        String query ="insert into USERAPPOINTMENT (UNAME,UEMAIL,UGENDER,UAGE,MOBILE,DOCTORNAME,SERVICETYPE,BOOKINGDATE, TIMESLOT ) values (?,?,?,?,?,?,?,?,?)";
        PreparedStatement pstmt = this.con.prepareStatement(query);
        
        
        pstmt.setString(1, user.getUNAME());
        pstmt.setString(2, user.getUEMAIL());
        pstmt.setString(3,user.getUGENDER());
        pstmt.setInt(4, user.getUAGE());
        pstmt.setLong(5, user.getMOBILE());
        pstmt.setString(6, user.getDOCTORNAME());
        pstmt.setString(7, user.getSERVICETYPE());
        Date sqlDate = Date.valueOf(user.getBOOKINGDATE());
        pstmt.setDate(8, sqlDate);
        pstmt.setString(9,user.getTIMESLOT());
        
        
         
            pstmt.executeUpdate();
            f=true;
        
        
        }
        catch(Exception e)
        {
        e.printStackTrace();
        System.out.println("Exception: " + e.getMessage()); // Log the exception message
        
        }
        
        return f;    
        
    }
    
    
    
    
    
    
 
     

public boolean saveOTP(String email, String OTP) {
    try {
        String query = "UPDATE SIGNUPDATA SET OTP = ? WHERE UEMAIL = ?";
        PreparedStatement pstmt = this.con.prepareStatement(query);
        pstmt.setString(1, OTP);
        pstmt.setString(2, email);
        pstmt.executeUpdate();
        return true;
    } catch (Exception e) {
        e.printStackTrace();
        return false;
    }
}

public String getOTP(String email) {
    try {
        String query = "SELECT OTP FROM SIGNUPDATA WHERE UEMAIL = ?";
        PreparedStatement pstmt = this.con.prepareStatement(query);
        pstmt.setString(1, email);
        ResultSet set = pstmt.executeQuery();
        if (set.next()) {
            return set.getString("OTP");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return null;
}




public User getUserByEmailAndSecQS(String UEMAIL, String UQUESTION, String UANSWER) {
    User user = null;

    try {
        String query = "SELECT * FROM SIGNUPDATA WHERE UEMAIL = ? AND UQUESTION = ? AND UANSWER = ?";
        PreparedStatement pstmt = con.prepareStatement(query);

        pstmt.setString(1, UEMAIL);
        pstmt.setString(2, UQUESTION);
        pstmt.setString(3, UANSWER);

        ResultSet set = pstmt.executeQuery();

        if (set.next()) {
            user = new User();
            user.setUNAME(set.getString("UNAME"));
            user.setUEMAIL(set.getString("UEMAIL"));
            user.setUPASSWORD(set.getString("UPASSWORD"));
            user.setUQUESTION(set.getString("UQUESTION"));
            user.setUANSWER(set.getString("UANSWER"));
            // Other setters as needed
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

    return user;
}












 //get doctor by doctorname email and password
    //FUNCTION FOR LOGIN A DOCTOR
    public User getDoctorByNameEmailAndPassword(String DOCTORNAME,String DOCTOREMAIL,String DOCTORPASSWORD)
    {
    
    User user=null;
    
    try{
        
        String query="select * from  DOCTORS where  DOCTORNAME=? AND DOCTOREMAIL=? AND DOCTORPASSWORD=?";
         PreparedStatement pstmt = con.prepareStatement(query);
         
         pstmt.setString(1,DOCTORNAME);
         pstmt.setString(2,DOCTOREMAIL);
          pstmt.setString(3,DOCTORPASSWORD);
         
         ResultSet set=pstmt.executeQuery();
         
         if(set.next())
         {
         user=new User();
         user.setDOCTORNAME(set.getString("DOCTORNAME"));
          user.setDOCTOREMAIL(set.getString("DOCTOREMAIL"));
           user.setDOCTORPASSWORD(set.getString("DOCTORPASSWORD"));
         
           
         }
        
        
    }
    
    catch(Exception e){
        e.printStackTrace();
   
    }
    
    return user;
    
    }


// getting Appointment data in the doctor dashboard


public List<User> getappDataDashboard(String DOCTORNAME) {
    List<User> userList = new ArrayList<>();

    try {
        String query = "select * from USERAPPOINTMENT where DOCTORNAME=?";
        PreparedStatement pstmt = con.prepareStatement(query);

        pstmt.setString(1, DOCTORNAME);

        ResultSet set = pstmt.executeQuery();

        while (set.next()) {
            User user = new User();
            user.setUNAME(set.getString("UNAME"));
            user.setUEMAIL(set.getString("UEMAIL"));
            user.setUGENDER(set.getString("UGENDER"));
            user.setUAGE(set.getInt("UAGE"));
            user.setMOBILE(set.getLong("MOBILE"));
            user.setDOCTORNAME(set.getString("DOCTORNAME"));
            user.setSERVICETYPE(set.getString("SERVICETYPE"));
            user.setTIMESLOT(set.getString("TIMESLOT"));

            Date sqlDate = set.getDate("BOOKINGDATE");
            LocalDate bookingDate = sqlDate.toLocalDate();

            user.setBOOKINGDATE(bookingDate);

            userList.add(user);
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

    return userList;
}








//ADMIN FUNCTIONS

 // FUNCTION FOR GETTING FEEDBACKDATA IN ADMIN PANEL 
public List<User> getFeedbackdatatoAdminpanel() {
    List<User> userList = new ArrayList<>();

    try {
        String query = "SELECT * FROM FEEDBACKDATA";
        PreparedStatement pstmt = con.prepareStatement(query);

        ResultSet set = pstmt.executeQuery();

        while (set.next()) {
            User user = new User();
            
            user.setUEMAIL(set.getString("UEMAIL"));
            user.setUFEEDBACK(set.getString("UFEEDBACK"));
           userList.add(user);
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

    return userList;
}





// FUNCTION FOR GETTING COMPLAINTSDATA IN ADMIN PANEL 
public List<User> getComplaintsdatatoAdminpanel() {
    List<User> userList = new ArrayList<>();

    try {
        String query = "SELECT * FROM COMPLAINTSDATA";
        PreparedStatement pstmt = con.prepareStatement(query);

        ResultSet set = pstmt.executeQuery();

        while (set.next()) {
            User user = new User();
            
            user.setUEMAIL(set.getString("UEMAIL"));
            user.setUFEEDBACKISSUE(set.getString("UFEEDBACKISSUE"));
            user.setUCOMPLAINTS(set.getString("UCOMPLAINTS"));
           userList.add(user);
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

    return userList;
}





// FUNCTION FOR GETTING BMI FORM DATA IN ADMIN PANEL 
public List<User> getBMIformdatatoAdminpanel() {
    List<User> userList = new ArrayList<>();

    try {
        String query = "SELECT * FROM DIETFORMINFO";
        PreparedStatement pstmt = con.prepareStatement(query);

        ResultSet set = pstmt.executeQuery();

        while (set.next()) {
            User user = new User();
            
            
            
            user.setUNAME(set.getString("UNAME"));
            user.setUEMAIL(set.getString("UEMAIL"));
            user.setUAGE(set.getInt("UAGE"));
            user.setUGENDER(set.getString("UGENDER"));
            user.setUWEIGHT(set.getString("UWEIGHT"));
            user.setUDIETPREFERENCE(set.getString("UDIETPREFERENCE"));
          
            userList.add(user);
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

    return userList;
}




// FUNCTION FOR GETTING USER SIGNUP DATA IN ADMIN PANEL 
public List<User> getUserSignupdatatoAdminpanel() {
    List<User> userList = new ArrayList<>();

    try {
        String query = "SELECT * FROM SIGNUPDATA";
        PreparedStatement pstmt = con.prepareStatement(query);

        ResultSet set = pstmt.executeQuery();

        while (set.next()) {
            User user = new User();
            
            
            
            user.setUNAME(set.getString("UNAME"));
            user.setUEMAIL(set.getString("UEMAIL"));
            user.setUPASSWORD(set.getString("UPASSWORD"));
            user.setUQUESTION(set.getString("UQUESTION"));
            user.setUANSWER(set.getString("UANSWER"));
          
          
            userList.add(user);
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

    return userList;
}




// getting Appointment data in the ADMIN dashboard


public List<User> getAppointmentBookingdatatoAdminPanel() {
    List<User> userList = new ArrayList<>();

    try {
       String query = "SELECT * FROM USERAPPOINTMENT";
        PreparedStatement pstmt = con.prepareStatement(query);

        ResultSet set = pstmt.executeQuery();

       

        while (set.next()) {
            User user = new User();
            user.setUNAME(set.getString("UNAME"));
            user.setUEMAIL(set.getString("UEMAIL"));
            user.setUGENDER(set.getString("UGENDER"));
            user.setUAGE(set.getInt("UAGE"));
            user.setMOBILE(set.getLong("MOBILE"));
            user.setDOCTORNAME(set.getString("DOCTORNAME"));
            user.setSERVICETYPE(set.getString("SERVICETYPE"));
            user.setTIMESLOT(set.getString("TIMESLOT"));

            Date sqlDate = set.getDate("BOOKINGDATE");
            LocalDate bookingDate = sqlDate.toLocalDate();

            user.setBOOKINGDATE(bookingDate);

            userList.add(user);
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

    return userList;
}



// getting DOCTORS DATA IN ADMIN DASHBOARD


public List<User> getDoctorstoAdminPanel() {
    List<User> userList = new ArrayList<>();

    try {
       String query = "SELECT * FROM DOCTORS";
        PreparedStatement pstmt = con.prepareStatement(query);

        ResultSet set = pstmt.executeQuery();

       

        while (set.next()) {
            User user = new User();
            user.setDOCTORNAME(set.getString("DOCTORNAME"));
            user.setDOCTOREMAIL(set.getString("DOCTOREMAIL"));
            user.setDOCTORPASSWORD(set.getString("DOCTORPASSWORD"));
            user.setDOCTORQUALIFICATION(set.getString("DOCTORQUALIFICATION"));
            user.setDOCTORLANGUAGES(set.getString("DOCTORLANGUAGES"));
            user.setAUDIOCALL(set.getInt("AUDIOCALL"));
            user.setVIDEOCALL(set.getInt("VIDEOCALL"));
            user.setTEXTQUERY(set.getInt("TEXTQUERY"));


            userList.add(user);
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

    return userList;
}




 //TO INSERT NEW DOCTOR THROUGH ADMIN PANEL
    
    public boolean addDoctor(User user){
    boolean f=false;
    
        try{
        
        //Doctor --> Database
       
        String query ="insert into DOCTORS (DOCTORNAME,DOCTOREMAIL,DOCTORPASSWORD,DOCTORQUALIFICATION,DOCTORLANGUAGES,AUDIOCALL,VIDEOCALL,TEXTQUERY) values (?,?,?,?,?,?,?,?)";
        PreparedStatement pstmt = this.con.prepareStatement(query);
        
            pstmt.setString(1, user.getDOCTORNAME());
            pstmt.setString(2, user.getDOCTOREMAIL());
            pstmt.setString(3, user.getDOCTORPASSWORD());
            pstmt.setString(4, user.getDOCTORQUALIFICATION());
            pstmt.setString(5,user.getDOCTORLANGUAGES());
            pstmt.setInt(6, user.getAUDIOCALL());
             pstmt.setInt(7, user.getVIDEOCALL());
              pstmt.setInt(8, user.getTEXTQUERY());
            
            
            pstmt.executeUpdate();
            f=true;
        
        
        }
        catch(Exception e)
        {
        e.printStackTrace();
        System.out.println("Exception: " + e.getMessage()); // Log the exception message
        
        }
        
        return f;    
        
    }
    


// DELETE DOCTOR THROUGH ADMIN PANEL
    
    
    public boolean deleteDoctor(String DOCTOREMAIL){
     boolean f=false;
    
      
        try{
        
             String query = "DELETE FROM DOCTORS WHERE DOCTOREMAIL=?";
         PreparedStatement pstmt = this.con.prepareStatement(query);
          pstmt.setString(1,DOCTOREMAIL);
          pstmt.executeUpdate();
            f=true;
         
        }
        catch(Exception e)
        {
        
        e.printStackTrace();
        System.out.println("Exception: " + e.getMessage()); // Log the exception message
        
        }
         return f;
        
       
    }























}


    
    
 
