trigger salaryrecord on Salary_Record__c (before insert,after insert,before update,after update,before delete,after delete) {
if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.req10(trigger.new);
    }if(trigger.isafter && triggertasks.runonce && (trigger.isupdate || trigger.isinsert)){
        triggertasks.runonce=false;
        payslipproject.req30(trigger.new);
    } 
}