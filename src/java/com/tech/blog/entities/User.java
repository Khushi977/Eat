
package com.tech.blog.entities;

import java.sql.*;
import java.time.LocalDate;

public class User {
    private String UNAME;
    private String UEMAIL;
    private String UPASSWORD;
    private String UQUESTION;
    private String UANSWER;
    private String OTP;
    private String UFEEDBACK;
    private String UCOMPLAINTS;
    private String UFEEDBACKISSUE;
    private int UAGE;
    private String UGENDER;
    private String UWEIGHT;
    private String UDIETPREFERENCE;
    private String TIMESLOT;
    private String SERVICETYPE;
     private Long MOBILE;
     private LocalDate BOOKINGDATE;
     private String DOCTORNAME;
     private String DOCTOREMAIL;
      private String DOCTORPASSWORD;
      private String DOCTORQUALIFICATION;
      private String DOCTORLANGUAGES;
      private int AUDIOCALL ;
      private int VIDEOCALL ;
      private int TEXTQUERY ;
      
      
     
    
    
    private String BO1,BO2,BO3,LO1,LO2,LO3,DO1,DO2,DO3,DAYS;
    

    public User(String UNAME, String UEMAIL, String UPASSWORD, String UQUESTION, String UANSWER) {
        this.UNAME = UNAME;
        this.UEMAIL = UEMAIL;
        this.UPASSWORD = UPASSWORD;
        this.UQUESTION = UQUESTION;
        this.UANSWER = UANSWER;
    }

    public User() {
        // Default constructor
    }

        
        
    public User(String email, String code) {
    this.UEMAIL = email;
    this.OTP = code;
}
        
        
        
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    
    public String getUNAME() {
        return UNAME;
    }

    public void setUNAME(String UNAME) {
        this.UNAME = UNAME;
    }

    public String getUEMAIL() {
        return UEMAIL;
    }

    public void setUEMAIL(String UEMAIL) {
        this.UEMAIL = UEMAIL;
    }

    public String getUPASSWORD() {
        return UPASSWORD;
    }

    public void setUPASSWORD(String UPASSWORD) {
        this.UPASSWORD = UPASSWORD;
    }

    public String getUQUESTION() {
        return UQUESTION;
    }

    public void setUQUESTION(String UQUESTION) {
        this.UQUESTION = UQUESTION;
    }

    public String getUANSWER() {
        return UANSWER;
    }

    public void setUANSWER(String UANSWER) {
        this.UANSWER = UANSWER;
    }

    public String getOTP() {
        return OTP;
    }

    public void setOTP(String OTP) {
        this.OTP = OTP;
    }

    public String getUFEEDBACK() {
        return UFEEDBACK;
    }

    public void setUFEEDBACK(String UFEEDBACK) {
        this.UFEEDBACK = UFEEDBACK;
    }

    public String getUCOMPLAINTS() {
        return UCOMPLAINTS;
    }

    public void setUCOMPLAINTS(String UCOMPLAINTS) {
        this.UCOMPLAINTS = UCOMPLAINTS;
    }

    public String getUFEEDBACKISSUE() {
        return UFEEDBACKISSUE;
    }

    public void setUFEEDBACKISSUE(String UFEEDBACKISSUE) {
        this.UFEEDBACKISSUE = UFEEDBACKISSUE;
    }

    public String getBO1() {
        return BO1;
    }

    public void setBO1(String BO1) {
        this.BO1 = BO1;
    }

    public String getBO2() {
        return BO2;
    }

    public void setBO2(String BO2) {
        this.BO2 = BO2;
    }

    public String getBO3() {
        return BO3;
    }

    public void setBO3(String BO3) {
        this.BO3 = BO3;
    }

    public String getLO1() {
        return LO1;
    }

    public void setLO1(String LO1) {
        this.LO1 = LO1;
    }

    public String getLO2() {
        return LO2;
    }

    public void setLO2(String LO2) {
        this.LO2 = LO2;
    }

    public String getLO3() {
        return LO3;
    }

    public void setLO3(String LO3) {
        this.LO3 = LO3;
    }

    public String getDO1() {
        return DO1;
    }

    public void setDO1(String DO1) {
        this.DO1 = DO1;
    }

    public String getDO2() {
        return DO2;
    }

    public void setDO2(String DO2) {
        this.DO2 = DO2;
    }

    public String getDO3() {
        return DO3;
    }

    public void setDO3(String DO3) {
        this.DO3 = DO3;
    }

    public String getDAYS() {
        return DAYS;
    }

    public void setDAYS(String DAYS) {
        this.DAYS = DAYS;
    }

    public int getUAGE() {
        return UAGE;
    }

    public void setUAGE(int UAGE) {
        this.UAGE = UAGE;
    }

    public String getUGENDER() {
        return UGENDER;
    }

    public void setUGENDER(String UGENDER) {
        this.UGENDER = UGENDER;
    }

    public String getUWEIGHT() {
        return UWEIGHT;
    }

    public void setUWEIGHT(String UWEIGHT) {
        this.UWEIGHT = UWEIGHT;
    }

    public String getUDIETPREFERENCE() {
        return UDIETPREFERENCE;
    }

    public void setUDIETPREFERENCE(String UDIETPREFERENCE) {
        this.UDIETPREFERENCE = UDIETPREFERENCE;
    }

    public String getTIMESLOT() {
        return TIMESLOT;
    }

    public void setTIMESLOT(String TIMESLOT) {
        this.TIMESLOT = TIMESLOT;
    }

    public String getSERVICETYPE() {
        return SERVICETYPE;
    }

    public void setSERVICETYPE(String SERVICETYPE) {
        this.SERVICETYPE = SERVICETYPE;
    }

    public Long getMOBILE() {
        return MOBILE;
    }

    public void setMOBILE(Long MOBILE) {
        this.MOBILE = MOBILE;
    }

   
 
    public LocalDate getBOOKINGDATE() {
        return BOOKINGDATE;
    }

    public void setBOOKINGDATE(LocalDate BOOKINGDATE) {
        this.BOOKINGDATE = BOOKINGDATE;
    }

    public String getDOCTORNAME() {
        return DOCTORNAME;
    }

    public void setDOCTORNAME(String DOCTORNAME) {
        this.DOCTORNAME = DOCTORNAME;
    }

    public String getDOCTOREMAIL() {
        return DOCTOREMAIL;
    }

    public void setDOCTOREMAIL(String DOCTOREMAIL) {
        this.DOCTOREMAIL = DOCTOREMAIL;
    }

    public String getDOCTORPASSWORD() {
        return DOCTORPASSWORD;
    }

    public void setDOCTORPASSWORD(String DOCTORPASSWORD) {
        this.DOCTORPASSWORD = DOCTORPASSWORD;
    }

    public String getDOCTORQUALIFICATION() {
        return DOCTORQUALIFICATION;
    }

    public void setDOCTORQUALIFICATION(String DOCTORQUALIFICATION) {
        this.DOCTORQUALIFICATION = DOCTORQUALIFICATION;
    }

    public String getDOCTORLANGUAGES() {
        return DOCTORLANGUAGES;
    }

    public void setDOCTORLANGUAGES(String DOCTORLANGUAGES) {
        this.DOCTORLANGUAGES = DOCTORLANGUAGES;
    }

    public int getAUDIOCALL() {
        return AUDIOCALL;
    }

    public void setAUDIOCALL(int AUDIOCALL) {
        this.AUDIOCALL = AUDIOCALL;
    }

    public int getVIDEOCALL() {
        return VIDEOCALL;
    }

    public void setVIDEOCALL(int VIDEOCALL) {
        this.VIDEOCALL = VIDEOCALL;
    }

    public int getTEXTQUERY() {
        return TEXTQUERY;
    }

    public void setTEXTQUERY(int TEXTQUERY) {
        this.TEXTQUERY = TEXTQUERY;
    }

    
}
