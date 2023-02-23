trigger Employedetails on Employee_Details__c (before insert,after insert,before update,after update,before delete,after delete) {
    if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.req3(trigger.new);
    }
    if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.req4(trigger.new);
    }
    if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.req5(trigger.new);
    }
    if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.req6(trigger.new);
    }
    if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.req8(trigger.new);
    }
    if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.req9(trigger.new);
    } if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.req112(trigger.new);
    } if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.req11(trigger.new);
    } if(trigger.isafter && (trigger.isupdate || trigger.isinsert)){
        payslipproject.req92(trigger.new);
    } if(trigger.isbefore && trigger.isinsert){
        payslipproject.req28(trigger.new);
    } 
}