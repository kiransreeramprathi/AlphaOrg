public class task70 
{
public void getConvertDateTime(string strDT)
{
Map<string,integer> MapMonthList = new Map<string,integer>();
MapMonthList.put('January',1);
MapMonthList.put('February',2);
MapMonthList.put('March',3);
MapMonthList.put('April',4);
MapMonthList.put('May',5);
MapMonthList.put('June',6);
MapMonthList.put('July',7);
MapMonthList.put('August',8);
MapMonthList.put('September',9);
MapMonthList.put('October',10);
MapMonthList.put('November',11);
MapMonthList.put('December',12);
String[] strDTDivided = strDT.split(' ');
string month = String.ValueOf(MapMonthList.get(strDTDivided.get(0)));
string day = strDTDivided.get(1).replace(',', '');
string year = strDTDivided.get(2);
string hour = strDTDivided.get(3).split(':').get(0);
string minute = strDTDivided.get(3).split(':').get(1);
string second ='00';
if (strDTDivided.get(4) == 'PM')
{
hour = String.ValueOf(Integer.ValueOf(hour) + 12);
    //system.debug(hour);
}
string stringDate = day + '-' + month + '-' + year + ' ' + hour + ':' + minute + ':' + second;
    system.debug(stringDate);
//Datetime myDate = datetime.valueOf(stringDate);
//return myDate.format();
    //system.debug(myDate);
}
}