/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package test;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Amit Tripathi
 */
public class DBManager {
    
    Connection con=null;
    public DBManager()
    {
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/application", "root", "");
        }
        catch(Exception ex)
        {
            
        }
    }
    public ResultSet ExecuteSelect(String cmdtxt)
    {
        ResultSet rs=null;
        try
        {
            Statement st=con.createStatement();
                 rs=st.executeQuery(cmdtxt);  
                 return rs;
        }
        catch(Exception ex)
        {
            return rs;
        }
    }
    public boolean ExecuteInserUpdateDelete(String cmdTxt)
    {
        
        try
        {
        PreparedStatement ps=con.prepareStatement(cmdTxt);
        ps.execute();
        return true;
        }
        catch(Exception ex)
        {
            //System.out.print("<script>alert('"+ex+"');</script>");
            return false;
        }
    }
}

