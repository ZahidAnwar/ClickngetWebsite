/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clicknget.order;

import com.a2zapp.database.configuration.db.DBInsert;
import com.a2zapp.database.configuration.db.DBResultSet;
import com.clicknget.actionsupport.ClickAndGetActionSupport;
import org.apache.commons.lang.xwork.StringUtils;

/**
 *
 * @author Zahid Anwar
 */
public class OrderActionSupport extends ClickAndGetActionSupport {
    
    private String address;
    private String town;
    private String postcode;
    private String phone;
    private String paymentOption;
    

    @Override
    public String execute() throws Exception {
        
       if(StringUtils.isNotEmpty(address)
               || StringUtils.isNotEmpty(town)
               || StringUtils.isNotEmpty(postcode)
               || StringUtils.isNotEmpty(phone)
               || StringUtils.isNotEmpty(paymentOption)) {
           
           DBResultSet dbr = getDB();
           DBInsert insert = new DBInsert(dbr);
           
           try {
               
               insert.setSQL("insert into ");
               
               
               
               
           }catch(Exception e) {
               e.printStackTrace();
               logger.error(e);
           } finally {
               
               if(insert !=null) {
                   insert.close();
               }
               
               if(dbr !=null)
                   dbr.close();
               
               
           }
           
           
       } 
       
       return SUCCESS;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTown() {
        return town;
    }

    public void setTown(String town) {
        this.town = town;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPaymentOption() {
        return paymentOption;
    }

    public void setPaymentOption(String paymentOption) {
        this.paymentOption = paymentOption;
    }
    
    
    
}
