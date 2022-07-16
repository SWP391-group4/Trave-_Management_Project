/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package DAO;

import Entity.HomeStays;
import Entity.SupplierAddresses;
import Entity.SupplierHomestays;
import Entity.SupplierImage;
import Entity.Suppliers;
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
public class DAOSupplierTest {
    
    public DAOSupplierTest() {
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
     * Test of getSuppiler method, of class DAOSupplier.
     */
//    @Test
//    public void testGetSuppiler() {
//        System.out.println("getSuppiler");
//        String accountS = "";
//        DAOSupplier instance = new DAOSupplier();
//        Suppliers expResult = null;
//        Suppliers result = instance.getSuppiler(accountS);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getSupplierAddresses method, of class DAOSupplier.
//     */
//    @Test
//    public void testGetSupplierAddresses() {
//        System.out.println("getSupplierAddresses");
//        String accountS = "";
//        DAOSupplier instance = new DAOSupplier();
//        SupplierAddresses expResult = null;
//        SupplierAddresses result = instance.getSupplierAddresses(accountS);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateSupplierEmail method, of class DAOSupplier.
//     */
//    @Test
//    public void testUpdateSupplierEmail() {
//        System.out.println("updateSupplierEmail");
//        String email = "";
//        String accountS = "";
//        DAOSupplier instance = new DAOSupplier();
//        int expResult = 0;
//        int result = instance.updateSupplierEmail(email, accountS);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getHomeStayByAccountS method, of class DAOSupplier.
//     */
//    @Test
//    public void testGetHomeStayByAccountS_String() {
//        System.out.println("getHomeStayByAccountS");
//        String accountS = "";
//        DAOSupplier instance = new DAOSupplier();
//        List<Suppliers> expResult = null;
//        List<Suppliers> result = instance.getHomeStayByAccountS(accountS);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getHomeStayByAccountS method, of class DAOSupplier.
//     */
//    @Test
//    public void testGetHomeStayByAccountS_List() {
//        System.out.println("getHomeStayByAccountS");
//        List<HomeStays> listHome = null;
//        DAOSupplier instance = new DAOSupplier();
//        List<Suppliers> expResult = null;
//        List<Suppliers> result = instance.getHomeStayByAccountS(listHome);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of listTopTenSupplier method, of class DAOSupplier.
//     */
//    @Test
//    public void testListTopTenSupplier() {
//        System.out.println("listTopTenSupplier");
//        DAOSupplier instance = new DAOSupplier();
//        List<Suppliers> expResult = null;
//        List<Suppliers> result = instance.listTopTenSupplier();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of listHomestayBySupplier method, of class DAOSupplier.
//     */
//    @Test
//    public void testListHomestayBySupplier() {
//        System.out.println("listHomestayBySupplier");
//        DAOSupplier instance = new DAOSupplier();
//       int expResult = 2;
//        int result = instance.listHomestayBySupplier().size();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
////
//    /**
//     * Test of listTop10Homestay method, of class DAOSupplier.
//     */
//    @Test
//    public void testListTop10Homestay() {
//        System.out.println("listTop10Homestay");
//        DAOSupplier instance = new DAOSupplier();
//        List<SupplierHomestays> expResult = null;
//        List<SupplierHomestays> result = instance.listTop10Homestay();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateSupplier method, of class DAOSupplier.
//     */
    @Test
    public void testUpdateSupplier() {
        System.out.println("updateSupplier");
        Suppliers sp = new Suppliers("2convitcon", "thinh", "dep", "124132321", "thinhnqhe150498", "408838123");
        DAOSupplier instance = new DAOSupplier();
        int expResult = 0;
        int result = instance.updateSupplier(sp);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
   
    }
//
//    /**
//     * Test of getSUPImage method, of class DAOSupplier.
//     */
//    @Test
//    public void testGetSUPImage() {
//        System.out.println("getSUPImage");
//        String accountS = "";
//        DAOSupplier instance = new DAOSupplier();
//        SupplierImage expResult = null;
//        SupplierImage result = instance.getSUPImage(accountS);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateSUPImage method, of class DAOSupplier.
//     */
//    @Test
//    public void testUpdateSUPImage() {
//        System.out.println("updateSUPImage");
//        String accountS = "";
//        String sim = "";
//        DAOSupplier instance = new DAOSupplier();
//        int expResult = 0;
//        int result = instance.updateSUPImage(accountS, sim);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateSupplierAddress method, of class DAOSupplier.
//     */
//    @Test
//    public void testUpdateSupplierAddress() {
//        System.out.println("updateSupplierAddress");
//        SupplierAddresses sa = null;
//        DAOSupplier instance = new DAOSupplier();
//        int expResult = 0;
//        int result = instance.updateSupplierAddress(sa);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of addSuppliers method, of class DAOSupplier.
//     */
//    @Test
//    public void testAddSuppliers() {
//        System.out.println("addSuppliers");
//        Suppliers sup = null;
//        DAOSupplier instance = new DAOSupplier();
//        int expResult = 0;
//        int result = instance.addSuppliers(sup);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of view5Suppliers method, of class DAOSupplier.
//     */
//    @Test
//    public void testView5Suppliers() {
//        System.out.println("view5Suppliers");
//        DAOSupplier instance = new DAOSupplier();
//        String expResult = "";
//        String result = instance.view5Suppliers();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of counttotalS method, of class DAOSupplier.
//     */
//    @Test
//    public void testCounttotalS() {
//        System.out.println("counttotalS");
//        DAOSupplier instance = new DAOSupplier();
//        int expResult = 0;
//        int result = instance.counttotalS();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of main method, of class DAOSupplier.
//     */
//    @Test
//    public void testMain() {
//        System.out.println("main");
//        String[] args = null;
//        DAOSupplier.main(args);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
    
}
