global class SchedulePrac implements schedulable{
    global void execute(schedulablecontext sc){
        System.enqueueJob(new QueablePractice());
    }
}