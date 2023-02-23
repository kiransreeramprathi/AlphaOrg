public class PizaaCreatorsController {
    public boolean BlueCheese{get;set;}
    public string SizeSelected{get;set;}
    public string outputSize{get;set;}
    
    
    public string outputsauce{get;set;}
    public string outputcrust{get;set;}
    public List<String> outputcheese{get;set;}
    public List<String> outputVeggies{get;set;}
    public List<String> outputMeats{get;set;}
    public List<String> outputCrustFlavour{get;set;}
    
    
    
    public List<String> CheeseSelected {get;set;}
    public String SauceSelected {get;set;}
    public String crustSelected {get;set;}
    public List<String> VeggiesSelected {get;set;}
    public List<String> MeatsSelected {get;set;}
    public List<String> CrustFlavourSelected {get;set;}
    
    
    
    public decimal sizecostfinal =0;
    public decimal cheesecostfinal=0;
    public  decimal Veggiescostfinal=0;
    public  decimal meatscostfinal=0;
    public   decimal CrustFlavourcostfinal=0;
    public   decimal deepdeepdishcostfinal=0;
    public decimal Total{get;set;}
    
    
    // SIZE OPTIONS & Size Output
    public List<SelectOption> getSizeoptions() {
        List<SelectOption> Options = new List<SelectOption>();
        Options.add(new SelectOption('4 slices-Personal','4 slices-Personal'));
        Options.add(new SelectOption('6 slices-Medium','6 slices-Medium'));
        Options.add(new SelectOption('8 slices-Large','8 slices-Large'));
        Options.add(new SelectOption('8 slices-Extra Large','8 slices-Extra Large'));
        return Options;
    }
    public void Selectsize(){
        decimal sizecost;
        if(SizeSelected=='4 slices-Personal'){
            outputSize='4 slices-Personal';
            sizecost = 4;
            sizecostfinal=sizecost;
        } else if(SizeSelected=='6 slices-Medium'){
            outputSize='6 slices-Medium';
            sizecost = 6;
            sizecostfinal=sizecost;
        }else if(SizeSelected=='8 slices-Large'){
            outputSize='8 slices-Large';
            sizecost = 8;
            sizecostfinal=sizecost;
        }else if(SizeSelected=='8 slices-Extra Large'){
            outputSize='8 slices-Extra Large';
            sizecost = 10;
            sizecostfinal=sizecost;
        }
        Total = sizecostfinal+cheesecostfinal+Veggiescostfinal+meatscostfinal+CrustFlavourcostfinal;
    }
    //Sauce options and output
    public List<SelectOption> getsauceoptions() {
        List<SelectOption> Options = new List<SelectOption>();
        Options.add(new SelectOption('Tomato Sauce','Tomato Sauce'));
        Options.add(new SelectOption('Alfredo Sauce','Alfredo Sauce'));
        Options.add(new SelectOption('Buffalo Sauce','Buffalo Sauce'));
        Options.add(new SelectOption('Spicy Mexican Sauce','Spicy Mexican Sauce'));
        Options.add(new SelectOption('Garlic Parmasean Alfredo Sauce','Garlic Parmasean Alfredo Sauce'));
        Options.add(new SelectOption('Marinara Sauce','Marinara Sauce'));
        
        return Options;
    }
    
    
    public void SelectSauce(){
        
        if(SauceSelected=='Tomato Sauce'){
            outputsauce='Tomato Sauce'; 
        }else if(SauceSelected=='Alfredo Sauce'){
            outputsauce='Alfredo Sauce';
        }else if(SauceSelected=='Buffalo Sauce'){
            outputsauce='Buffalo Sauce';
        } else if(SauceSelected=='Spicy Mexican Sauce'){
            outputsauce='Spicy Mexican Sauce';
        } else if(SauceSelected=='Garlic Parmasean Alfredo Sauce'){
            outputsauce='Garlic Parmasean Alfredo Sauce';
        } else if(SauceSelected=='Marinara Sauce'){
            outputsauce='Marinara Sauce';
        } 
    } 
    
    
    //Cheese options and Output
    
    public List<SelectOption> getcheeseoptions() {
        List<SelectOption> Options = new List<SelectOption>();
        Options.add(new SelectOption('Blue Cheese','Blue Cheese'));
        Options.add(new SelectOption('Cottage Cheese','Cottage Cheese'));
        Options.add(new SelectOption('Swiss Cheese','Swiss Cheese'));
        Options.add(new SelectOption('American Cheese','American Cheese'));
        Options.add(new SelectOption('Mozzarella','Mozzarella'));
        Options.add(new SelectOption('Cheddar Cheese','Cheddar Cheese'));
        Options.add(new SelectOption('Feta Cheese','Feta Cheese'));
        Options.add(new SelectOption('Monterey','Monterey'));
        Options.add(new SelectOption('Parmigiano Reggiano','Parmigiano Reggiano'));
        return Options;
    }
    public void Selectcheese(){
        decimal cheesecost = 0;
        for(integer i=0; i<CheeseSelected.size();i++){
            outputcheese = CheeseSelected;
            cheesecost += 0.25;
            cheesecostfinal=cheesecost;
        }
        Total = sizecostfinal+cheesecostfinal+Veggiescostfinal+meatscostfinal+CrustFlavourcostfinal;  
    }
    
    // Crust options and output
    public List<SelectOption> getCrustoptions() {
        List<SelectOption> Options = new List<SelectOption>();
        Options.add(new SelectOption('Fresh Pan Crust','Fresh Pan Crust'));
        Options.add(new SelectOption('Cheese Burst Crust','Cheese Burst Crust'));
        Options.add(new SelectOption('Stuffed Cheese Crust','Stuffed Cheese Crust'));
        Options.add(new SelectOption('Thin Crust','Thin Crust'));
        Options.add(new SelectOption('Deep Deep Dish','Deep Deep Dish'));
        Options.add(new SelectOption('Brooklyn Style','Brooklyn Style'));
        
        return Options;
    }
    public void Selectcrust(){
        decimal deepdeepdishcost = 0;
        if(crustSelected=='Fresh Pan Crust'){
            outputcrust='Fresh Pan Crust' ;
            deepdeepdishcost = 0;
            deepdeepdishcostfinal = deepdeepdishcost;
        } else if(crustSelected=='Cheese Burst Crust' ){
            outputcrust='Cheese Burst Crust' ;
             deepdeepdishcost = 0;
            deepdeepdishcostfinal = deepdeepdishcost;
        }else if(crustSelected=='Hand-tossed crust'){
            outputcrust='Hand-tossed crust' ;
             deepdeepdishcost = 0;
            deepdeepdishcostfinal = deepdeepdishcost;
        }else if(crustSelected=='Stuffed Cheese Crust'){
            outputcrust='Stuffed Cheese Crust' ;
             deepdeepdishcost = 0;
            deepdeepdishcostfinal = deepdeepdishcost;
        }else if(crustSelected=='Thin Crust'){
            outputcrust='Thin Crust' ;
             deepdeepdishcost = 0;
            deepdeepdishcostfinal = deepdeepdishcost;
        }else if(crustSelected=='Deep Deep Dish'){
            outputcrust='Deep Deep Dish' ;
            deepdeepdishcost = 3;
            deepdeepdishcostfinal = deepdeepdishcost;
           
        }else if(crustSelected=='Brooklyn Style'){
            outputcrust='Brooklyn Style' ;
             deepdeepdishcost = 0;
            deepdeepdishcostfinal = deepdeepdishcost;
        }else if(crustSelected=='Chicago Style'){
            outputcrust='Chicago Style' ;
             deepdeepdishcost = 0;
            deepdeepdishcostfinal = deepdeepdishcost;
        }
         Total = sizecostfinal+cheesecostfinal+deepdeepdishcostfinal+Veggiescostfinal+meatscostfinal+CrustFlavourcostfinal;
    }
    // Veggies option 
    public List<SelectOption> getVeggiesoptions() {
        List<SelectOption> Options = new List<SelectOption>();
        Options.add(new SelectOption('Spinach','Spinach'));
        Options.add(new SelectOption('Jalapeneos','Jalapeneos'));
        Options.add(new SelectOption('Banana Peppers','Banana Peppers'));
        Options.add(new SelectOption('Roasted Red Peppers','Roasted Red Peppers'));
        Options.add(new SelectOption('Tomatoes','Tomatoes'));
        Options.add(new SelectOption('Onions','Onions'));
        Options.add(new SelectOption('Pineapple','Pineapple'));
        Options.add(new SelectOption('Corn','Corn'));
        Options.add(new SelectOption('Black Olives','Black Olives'));
        return Options;
    }
    public void SelectVeggies(){
        decimal Veggiescost = 0;
        for(integer i=0; i<VeggiesSelected.size();i++){
            outputVeggies = VeggiesSelected;
        }
        for(integer i=2; i<VeggiesSelected.size();i++){
            Veggiescost +=0.5;
            Veggiescostfinal=Veggiescost;
        }
        Total = sizecostfinal+cheesecostfinal+Veggiescostfinal+meatscostfinal+CrustFlavourcostfinal;
    }
    //Meats option
    public List<SelectOption> getMeatsoptions() {
        List<SelectOption> Options = new List<SelectOption>();
        Options.add(new SelectOption('Bacon','Bacon'));
        Options.add(new SelectOption('Ham','Ham'));
        Options.add(new SelectOption('Chicken','Chicken'));
        Options.add(new SelectOption('Sausage','Sausage'));
        Options.add(new SelectOption('Pepparoni','Pepparoni'));
        Options.add(new SelectOption('MeatBalls','MeatBalls'));
        return Options;
    }
    public void SelectMeats(){
        decimal meatscost = 0;
        for(integer i=0; i<MeatsSelected.size();i++){
            outputMeats = MeatsSelected;
        }
        for(integer i=2; i<MeatsSelected.size();i++){
            meatscost +=0.5;
            meatscostfinal =meatscost; 
        }
        Total = sizecostfinal+cheesecostfinal+Veggiescostfinal+meatscostfinal+CrustFlavourcostfinal;
    }
    // Crust flavor options
    public List<SelectOption> getCrustFlavouroptions() {
        List<SelectOption> Options = new List<SelectOption>();
        Options.add(new SelectOption('Garlic','Garlic'));
        Options.add(new SelectOption('Parmasean','Parmasean'));
        Options.add(new SelectOption('oregano','oregano'));
        Options.add(new SelectOption('Chilli Flakes','Chilli Flakes'));
        return Options;
    }
    public void SelectCrustFlavour(){
        decimal CrustFlavourcost =0;
        for(integer i=0; i<CrustFlavourSelected.size();i++){
            outputCrustFlavour = CrustFlavourSelected;
        }
        for(integer i=1; i<CrustFlavourSelected.size();i++){
            CrustFlavourcost +=0.75;
            CrustFlavourcostfinal = CrustFlavourcost;
        }
        Total = sizecostfinal+cheesecostfinal+Veggiescostfinal+meatscostfinal+CrustFlavourcostfinal;
    }
    
    public void calculation(){
       /* Pizza_Order__c pizz = new Pizza_Order__c();
        if( SizeSelected != null){
        pizz.Size__c = SizeSelected;
        pizz.Cheese__c= string.valueOf(CheeseSelected);
        pizz.Sauce__c = SauceSelected;
        pizz.Crust__c = crustSelected;
        pizz.Crust_Flavor__c=string.valueOf(CrustFlavourSelected);
        pizz.Toppings_Veggies__c = string.valueOf(VeggiesSelected);
        pizz.Toppings_Meats__c = string.valueOf(MeatsSelected);
            pizz.Total_Cost__c = Total;
        insert pizz; 
        ApexPages.addmessage(new ApexPages.message(ApexPages.severity.confirm, 'Hurray!!! Your Order was placed'));
        } else {
        ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error, 'Sorry!!! Your Order was not placed'));
        }*/
}
}