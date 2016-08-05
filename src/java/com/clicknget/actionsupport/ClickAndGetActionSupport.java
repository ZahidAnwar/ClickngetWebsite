/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clicknget.actionsupport;

import com.a2zapp.database.configuration.db.DBResultSet;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author Zahid Anwar
 */
public class ClickAndGetActionSupport extends ActionSupport implements ServletRequestAware, SessionAware {

    protected Map sess;
    protected HttpServletRequest request;
    protected Logger logger = Logger.getLogger(ClickAndGetActionSupport.class);

    public DBResultSet getDB() {

        return new DBResultSet("Clicknget");
    }

    @Override
    public void setSession(Map<String, Object> map) {
        sess = map;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        this.request = hsr;
    }

}
