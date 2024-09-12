public class StudentTriggerHandler {
    public static void commentField(List<Student__c> newStudents) {
        for (Student__c student : newStudents) {
            student.Comment__c = 'Done';
        }
    }
}