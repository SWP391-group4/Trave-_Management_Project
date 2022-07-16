/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package DAO;

import Entity.Categories;
import Entity.Extensions;
import Entity.HomeStayAddressses;
import Entity.HomeStayDetails;
import Entity.HomeStays;
import Entity.Images;
import Entity.Rules;
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
public class DAOHomeStaysTest {
    
    public DAOHomeStaysTest() {
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
     * Test of search method, of class DAOHomeStays.
     */
   

    /**
     * Test of addHomeStays method, of class DAOHomeStays.
     */
//    @Test
//    public void testAddHomeStays() {
//        System.out.println("addHomeStays");
//        HomeStays hs = null;
//        DAOHomeStays instance = new DAOHomeStays();
//        int expResult = 0;
//        int result = instance.addHomeStays(hs);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateHomeStays method, of class DAOHomeStays.
//     */
//    @Test
//    public void testUpdateHomeStays() {
//        System.out.println("updateHomeStays");
//        HomeStays hs = null;
//        DAOHomeStays instance = new DAOHomeStays();
//        int expResult = 0;
//        int result = instance.updateHomeStays(hs);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of removeHomeStays method, of class DAOHomeStays.
//     */
//    @Test
//    public void testRemoveHomeStays() {
//        System.out.println("removeHomeStays");
//        String id = "";
//        DAOHomeStays instance = new DAOHomeStays();
//        int expResult = 0;
//        int result = instance.removeHomeStays(id);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of viewallHomeStays method, of class DAOHomeStays.
//     */
    @Test
    public void testViewallHomeStays() {
        System.out.println("viewallHomeStays");
        DAOHomeStays instance = new DAOHomeStays();
        int expResult =103;
       int result = instance.viewallHomeStays().size();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    
    }
//
//    /**
//     * Test of viewallHomeStayByAddress method, of class DAOHomeStays.
//     */
//    @Test
//    public void testViewallHomeStayByAddress() {
//        System.out.println("viewallHomeStayByAddress");
//        DAOHomeStays instance = new DAOHomeStays();
//        List<HomeStays> expResult = null;
//        List<HomeStays> result = instance.viewallHomeStayByAddress();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getHomeStaybyCID method, of class DAOHomeStays.
//     */
//    @Test
//    public void testGetHomeStaybyCID() {
//        System.out.println("getHomeStaybyCID");
//        String cid = "CATID002  ";
//        DAOHomeStays instance = new DAOHomeStays();
//        String expResult = null;
//        String result = instance.getHomeStaybyCID(cid);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of searchByHomeStay method, of class DAOHomeStays.
//     */
//    @Test
//    public void testSearchByHomeStay() {
//        System.out.println("searchByHomeStay");
//        String homestayID = "HS0001";
//        DAOHomeStays instance = new DAOHomeStays();
//       String expResult = "Ha Noi";
//        String result = instance.searchByHomeStay(homestayID).getCity();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getHomestayById method, of class DAOHomeStays.
//     */
//    @Test
//    public void testGetHomestayById() {
//        System.out.println("getHomestayById");  
//        DAOHomeStays instance = new DAOHomeStays();
//        String expResult = "2convitcon";
//         String realValue=instance.getHomestayById("HS0002").getAccountS();
//        assertEquals(expResult, realValue);
//        // TODO review the generated test code and remove the default call to fail.
//    
//    }
//
//    /**
//     * Test of getCategory method, of class DAOHomeStays.
//     */
//    @Test
//    public void testGetCategory() {
//        System.out.println("getCategory");
//        String homestayId = "";
//        DAOHomeStays instance = new DAOHomeStays();
//        Categories expResult = null;
//        Categories result = instance.getCategory(homestayId);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getExtension method, of class DAOHomeStays.
//     */
//    @Test
//    public void testGetExtension() {
//        System.out.println("getExtension");
//        String homestayId = "";
//        DAOHomeStays instance = new DAOHomeStays();
//        Extensions expResult = null;
//        Extensions result = instance.getExtension(homestayId);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getExtenstion method, of class DAOHomeStays.
//     */
//    @Test
//    public void testGetExtenstion() {
//        System.out.println("getExtenstion");
//        Extensions e = null;
//        DAOHomeStays instance = new DAOHomeStays();
//        List<String> expResult = null;
//        List<String> result = instance.getExtenstion(e);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getRule method, of class DAOHomeStays.
//     */
//    @Test
//    public void testGetRule() {
//        System.out.println("getRule");
//        String homestayId = "";
//        DAOHomeStays instance = new DAOHomeStays();
//        Rules expResult = null;
//        Rules result = instance.getRule(homestayId);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getImage method, of class DAOHomeStays.
//     */
//    @Test
//    public void testGetImage() {
//        System.out.println("getImage");
//        String homestayId = "";
//        DAOHomeStays instance = new DAOHomeStays();
//        List<Images> expResult = null;
//        List<Images> result = instance.getImage(homestayId);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//
//    }
//
//    /**
//     * Test of getListAddress method, of class DAOHomeStays.
//     */
//    @Test
//    public void testGetListAddress() {
//        System.out.println("getListAddress");
//        List<HomeStays> list = null;
//        DAOHomeStays instance = new DAOHomeStays();
//        List<HomeStayAddressses> expResult = null;
//        List<HomeStayAddressses> result = instance.getListAddress(list);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of countToDiv method, of class DAOHomeStays.
//     */
//    @Test
//    public void testCountToDiv() {
//        System.out.println("countToDiv");
//        DAOHomeStays instance = new DAOHomeStays();
//        int expResult = 0;
//        int result = instance.countToDiv();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of countToDivforCATE method, of class DAOHomeStays.
//     */
//    @Test
//    public void testCountToDivforCATE() {
//        System.out.println("countToDivforCATE");
//        String cateID = "";
//        DAOHomeStays instance = new DAOHomeStays();
//        int expResult = 0;
//        int result = instance.countToDivforCATE(cateID);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of countoDivforSearchCity method, of class DAOHomeStays.
//     */
//    @Test
//    public void testCountoDivforSearchCity() {
//        System.out.println("countoDivforSearchCity");
//        String txtSearch = "Ha Noi";
//        DAOHomeStays instance = new DAOHomeStays();
//        int expResult = 0;
//        int result = instance.countoDivforSearchCity(txtSearch);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of countoDivforSearchName method, of class DAOHomeStays.
//     */
//    @Test
//    public void testCountoDivforSearchName() {
//        System.out.println("countoDivforSearchName");
//        String txtSearchName = "";
//        DAOHomeStays instance = new DAOHomeStays();
//        int expResult = 0;
//        int result = instance.countoDivforSearchName(txtSearchName);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of paggingHomeStay method, of class DAOHomeStays.
//     */
//    @Test
//    public void testPaggingHomeStay() {
//        System.out.println("paggingHomeStay");
//        int index = 0;
//        DAOHomeStays instance = new DAOHomeStays();
//        List<HomeStays> expResult = null;
//        List<HomeStays> result = instance.paggingHomeStay(index);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of paggingHomeStaybyCATEID method, of class DAOHomeStays.
//     */
    @Test
    public void testPaggingHomeStaybyCATEID() {
        System.out.println("paggingHomeStaybyCATEID");
        int index = 5;
        String CateID = "CATID002";
        DAOHomeStays instance = new DAOHomeStays();
       int expResult = 2;
       int result = instance.paggingHomeStaybyCATEID(index, CateID).size();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    
    }
     public void testPaggingHomeStaybyCATEIDTC2() {
        System.out.println("paggingHomeStaybyCATEID");
        int index = 3;
        String CateID = "CATID004";
        DAOHomeStays instance = new DAOHomeStays();
       int expResult = 6;
       int result = instance.paggingHomeStaybyCATEID(index, CateID).size();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    
    }
        public void testPaggingHomeStaybyCATEIDTC3() {
        System.out.println("paggingHomeStaybyCATEID");
        int index = 1;
        String CateID = "CATID001";
        DAOHomeStays instance = new DAOHomeStays();
       int expResult = 6;
       int result = instance.paggingHomeStaybyCATEID(index, CateID).size();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    
    }
//
//    /**
//     * Test of SearchbyProvince method, of class DAOHomeStays.

    @Test
    public void testSearchbyProvinceTC1() {
        System.out.println("SearchbyProvince");
        int index = 1;
        String txtSearch = "hue";
        DAOHomeStays instance = new DAOHomeStays();
       int expResult = 3;
        int result = instance.SearchbyProvince(index, txtSearch).size();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }
     @Test
    public void testSearchbyProvinceTC2() {
        System.out.println("SearchbyProvince");
        int index = 1;
        String txtSearch = "Ho Chi Minh";
        DAOHomeStays instance = new DAOHomeStays();
       int expResult = 6;
        int result = instance.SearchbyProvince(index, txtSearch).size();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }
        @Test
    public void testSearchbyProvinceTC3() {
        System.out.println("SearchbyProvince");
        int index = 1;
        String txtSearch = "Ha Noi";
        DAOHomeStays instance = new DAOHomeStays();
       int expResult = 6;
        int result = instance.SearchbyProvince(index, txtSearch).size();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }
//
//    /**
//     * Test of SearchbyName method, of class DAOHomeStays.
//     */
    @Test
    public void testSearchbyNameTC3() {
        System.out.println("SearchbyName");
        int index = 3;
        String txtSearch = "Ma";
        DAOHomeStays instance = new DAOHomeStays();
        int expResult = 1;
       int result = instance.SearchbyName(index, txtSearch).size();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
      
    }
      @Test
    public void testSearchbyNameTC2() {
        System.out.println("SearchbyName");
        int index = 1;
        String txtSearch = "Quang";
        DAOHomeStays instance = new DAOHomeStays();
        int expResult = 1;
       int result = instance.SearchbyName(index, txtSearch).size();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
      
    }
        public void testSearchbyNameTC1() {
        System.out.println("SearchbyName");
        int index = 1;
        String txtSearch = "";
        DAOHomeStays instance = new DAOHomeStays();
        int expResult = 6;
       int result = instance.SearchbyName(index, txtSearch).size();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
      
    }
//
//    /**
//     * Test of ListCate method, of class DAOHomeStays.
//     */
    @Test
    public void testListCate() {
        System.out.println("ListCate");
        DAOHomeStays instance = new DAOHomeStays();
       int expResult = 4;
       int result = instance.ListCate().size();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    
    }
//
//    /**
//     * Test of getHomestay method, of class DAOHomeStays.
//     */
    @Test
    public void testGetHomestayUC3() {
        String homestayId = "HS0002";
        DAOHomeStays instance = new DAOHomeStays();
        String expResult ="2convitcon";
        String result = instance.getHomestay(homestayId).getAccountS();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
  
    }
      @Test
    public void testGetHomestayUC2() {
        String homestayId = "HS0001";
        DAOHomeStays instance = new DAOHomeStays();
        String expResult ="1danvit";
        String result = instance.getHomestay(homestayId).getAccountS();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
  
    }
      @Test
    public void testGetHomestayUC1() {
        String homestayId = "HS0001";
        DAOHomeStays instance = new DAOHomeStays();
        String expResult ="Mahali Mzuri";
        String result = instance.getHomestay(homestayId).getHomeStayname();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
  
    }
         @Test
    public void testGetHomestayUC4() {
        String homestayId = "HS0062";
        DAOHomeStays instance = new DAOHomeStays();
        String expResult ="2convitcon";
        String result = instance.getHomestay(homestayId).getAccountS();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
  
    }

//    /**
//     * Test of getHomestay2 method, of class DAOHomeStays.
//     */
//    @Test
//    public void testGetHomestay2() {
//        System.out.println("getHomestay2");
//        String homestayId = "";
//        DAOHomeStays instance = new DAOHomeStays();
//        HomeStays expResult = null;
//        HomeStays result = instance.getHomestay2(homestayId);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getHomestaybyAccountS method, of class DAOHomeStays.
//     */
//    @Test
//    public void testGetHomestaybyAccountS() {
//        System.out.println("getHomestaybyAccountS");
//        String accountS = "";
//        DAOHomeStays instance = new DAOHomeStays();
//        HomeStays expResult = null;
//        HomeStays result = instance.getHomestaybyAccountS(accountS);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getRandomHomeStaybySuppiler method, of class DAOHomeStays.
//     */
//    @Test
//    public void testGetRandomHomeStaybySuppiler() {
//        System.out.println("getRandomHomeStaybySuppiler");
//        String accountS = "2convitcon";
//        DAOHomeStays instance = new DAOHomeStays();
//        String expResult = "CATID002  ";
//        String result = instance.getRandomHomeStaybySuppiler(accountS);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getHomeStayforSUP method, of class DAOHomeStays.
//     */
//    @Test
//    public void testGetHomeStayforSUP() {
//        System.out.println("getHomeStayforSUP");
//        String accountS = "";
//        DAOHomeStays instance = new DAOHomeStays();
//        List<HomeStays> expResult = null;
//        List<HomeStays> result = instance.getHomeStayforSUP(accountS);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getRandomHomeStay method, of class DAOHomeStays.
//     */
//    @Test
//    public void testGetRandomHomeStay() {
//        System.out.println("getRandomHomeStay");
//        DAOHomeStays instance = new DAOHomeStays();
//        List<HomeStays> expResult = null;
//        List<HomeStays> result = instance.getRandomHomeStay();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of view5HomeStays method, of class DAOHomeStays.
//     */
//    @Test
//    public void testView5HomeStays() {
//        System.out.println("view5HomeStays");
//        DAOHomeStays instance = new DAOHomeStays();
//        String expResult = "";
//        String result = instance.view5HomeStays();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of countToDivforStatus method, of class DAOHomeStays.
//     */
//    @Test
//    public void testCountToDivforStatus() {
//        System.out.println("countToDivforStatus");
//        int status = 1;
//        DAOHomeStays instance = new DAOHomeStays();
//        int expResult =70;
//        int result = instance.countToDivforStatus(status);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//     
//    }
//
//    /**
//     * Test of paggingHomeStaybyStatus method, of class DAOHomeStays.
//     */
//    @Test
//    public void testPaggingHomeStaybyStatus() {
//        System.out.println("paggingHomeStaybyStatus");
//        int index = 0;
//        int status = 0;
//        DAOHomeStays instance = new DAOHomeStays();
//        List<HomeStays> expResult = null;
//        List<HomeStays> result = instance.paggingHomeStaybyStatus(index, status);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateHomeStayStatus method, of class DAOHomeStays.
//     */
//    @Test
//    public void testUpdateHomeStayStatus() {
//        System.out.println("updateHomeStayStatus");
//        HomeStays h = null;
//        DAOHomeStays instance = new DAOHomeStays();
//        int expResult = 0;
//        int result = instance.updateHomeStayStatus(h);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateHomeStayDetail method, of class DAOHomeStays.
//     */
//    @Test
//    public void testUpdateHomeStayDetail() {
//        System.out.println("updateHomeStayDetail");
//        HomeStayDetails hd = null;
//        DAOHomeStays instance = new DAOHomeStays();
//        int expResult = 0;
//        int result = instance.updateHomeStayDetail(hd);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateRules method, of class DAOHomeStays.
//     */
//    @Test
//    public void testUpdateRules() {
//        System.out.println("updateRules");
//        Rules r = null;
//        DAOHomeStays instance = new DAOHomeStays();
//        int expResult = 0;
//        int result = instance.updateRules(r);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateExtensions method, of class DAOHomeStays.
//     */
//    @Test
//    public void testUpdateExtensions() {
//        System.out.println("updateExtensions");
//        Extensions e = null;
//        DAOHomeStays instance = new DAOHomeStays();
//        int expResult = 0;
//        int result = instance.updateExtensions(e);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of main method, of class DAOHomeStays.
//     */
//    @Test
//    public void testMain() {
//        System.out.println("main");
//        String[] args = null;
//        DAOHomeStays.main(args);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//    
}
