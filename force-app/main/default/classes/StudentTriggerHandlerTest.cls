@isTest
public class StudentTriggerHandlerTest {
    @isTest
    static void testStudentComment() {
        Student__c testStudent = new Student__c(
            Mark__c = 90 // You can set other necessary fields here
        );
        Test.startTest();
        insert testStudent;
        Test.stopTest();

        Student__c result = [SELECT Id, Comment__c FROM Student__c WHERE Id = :testStudent.Id];

        System.assertEquals('Done', result.Comment__c, 'Comment field should be "Done" after insert.');
    }
}