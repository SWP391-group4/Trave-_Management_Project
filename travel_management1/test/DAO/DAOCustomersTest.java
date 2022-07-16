/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package DAO;

import Entity.CustomerAddresses;
import Entity.CustomerImage;
import Entity.Customers;
import Entity.MessageAdmin;
import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author thinh
 */
public class DAOCustomersTest {
    
    public DAOCustomersTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of listCustomer method, of class DAOCustomers.
     */
//    @Test
//    public void testListCustomer() {
//        System.out.println("listCustomer");
//        DAOCustomers instance = new DAOCustomers();
//        List<Customers> expResult = null;
//        List<Customers> result = instance.listCustomer();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of listTop5Customer method, of class DAOCustomers.
//     */
//    @Test
//    public void testListTop5Customer() {
//        System.out.println("listTop5Customer");
//        DAOCustomers instance = new DAOCustomers();
//        List<Customers> expResult = null;
//        List<Customers> result = instance.listTop5Customer();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getCustomer method, of class DAOCustomers.
//     */
//    @Test
//    public void testGetCustomer() {
//        System.out.println("getCustomer");
//        String accountC = "";
//        DAOCustomers instance = new DAOCustomers();
//        Customers expResult = null;
//        Customers result = instance.getCustomer(accountC);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getCustomerAddresses method, of class DAOCustomers.
//     */
    @Test
    public void testGetCustomerAddressesUT1() {
        System.out.println("getCustomerAddresses");
        String accountC = "binhminhdaysong";
        DAOCustomers instance = new DAOCustomers();
        String expResult = "Hue";
        String result = instance.getCustomerAddresses(accountC).getCity();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
       
    }
        @Test
    public void testGetCustomerAddressesUT2() {
        System.out.println("getCustomerAddresses");
        String accountC = "binhminhdaysong";
        DAOCustomers instance = new DAOCustomers();
        String expResult = "Huong Giang";
        String result = instance.getCustomerAddresses(accountC).getWard();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
       
    }

//
//    /**
//     * Test of getImage method, of class DAOCustomers.
//     */
//    @Test
//    public void testGetImage() {
//        System.out.println("getImage");
//        String accountC = "";
//        DAOCustomers instance = new DAOCustomers();
//        CustomerImage expResult = null;
//        CustomerImage result = instance.getImage(accountC);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateCustomer method, of class DAOCustomers.
//     */
//    @Test
//    public void testUpdateCustomer() {
//        System.out.println("updateCustomer");
//        Customers cus = null;
//        DAOCustomers instance = new DAOCustomers();
//        int expResult = 0;
//        int result = instance.updateCustomer(cus);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateCustomerEmail method, of class DAOCustomers.
//     */
//    @Test
//    public void testUpdateCustomerEmail() {
//        System.out.println("updateCustomerEmail");
//        String email = "";
//        String accountC = "";
//        DAOCustomers instance = new DAOCustomers();
//        int expResult = 0;
//        int result = instance.updateCustomerEmail(email, accountC);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateCustomerStatus method, of class DAOCustomers.
//     */
//    @Test
//    public void testUpdateCustomerStatus() {
//        System.out.println("updateCustomerStatus");
//        int status = 0;
//        String accountC = "";
//        DAOCustomers instance = new DAOCustomers();
//        int expResult = 0;
//        int result = instance.updateCustomerStatus(status, accountC);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateCustomerImage method, of class DAOCustomers.
//     */
//    @Test
//    public void testUpdateCustomerImage() {
//        System.out.println("updateCustomerImage");
//        String src = "";
//        String accountC = "";
//        DAOCustomers instance = new DAOCustomers();
//        int expResult = 0;
//        int result = instance.updateCustomerImage(src, accountC);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateCustomerAddress method, of class DAOCustomers.
//     */
//    @Test
//    public void testUpdateCustomerAddress() {
//        System.out.println("updateCustomerAddress");
//        CustomerAddresses cusAdd = null;
//        DAOCustomers instance = new DAOCustomers();
//        int expResult = 0;
//        int result = instance.updateCustomerAddress(cusAdd);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of totalUser method, of class DAOCustomers.
//     */
//    @Test
//    public void testTotalUser_0args() {
//        System.out.println("totalUser");
//        DAOCustomers instance = new DAOCustomers();
//        int expResult = 0;
//        int result = instance.totalUser();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of totalUser method, of class DAOCustomers.
//     */
//    @Test
//    public void testTotalUser_String() {
//        System.out.println("totalUser");
//        String str = "";
//        DAOCustomers instance = new DAOCustomers();
//        int expResult = 0;
//        int result = instance.totalUser(str);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of pagging method, of class DAOCustomers.
//     */
//    @Test
//    public void testPagging_int() {
//        System.out.println("pagging");
//        int index = 0;
//        DAOCustomers instance = new DAOCustomers();
//        List<Customers> expResult = null;
//        List<Customers> result = instance.pagging(index);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of pagging method, of class DAOCustomers.
//     */
//    @Test
//    public void testPagging_int_String() {
//        System.out.println("pagging");
//        int index = 0;
//        String str = "";
//        DAOCustomers instance = new DAOCustomers();
//        List<Customers> expResult = null;
//        List<Customers> result = instance.pagging(index, str);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of contactAdmin method, of class DAOCustomers.
//     */
//    @Test
//    public void testContactAdmin() {
//        System.out.println("contactAdmin");
//        MessageAdmin mess = null;
//        DAOCustomers instance = new DAOCustomers();
//        int expResult = 0;
//        int result = instance.contactAdmin(mess);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of counttotalC method, of class DAOCustomers.
//     */
//    @Test
//    public void testCounttotalC() {
//        System.out.println("counttotalC");
//        DAOCustomers instance = new DAOCustomers();
//        int expResult = 0;
//        int result = instance.counttotalC();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of main method, of class DAOCustomers.
//     */
//    @Test
//    public void testMain() {
//        System.out.println("main");
//        String[] args = null;
//        DAOCustomers.main(args);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//    
//}
}
