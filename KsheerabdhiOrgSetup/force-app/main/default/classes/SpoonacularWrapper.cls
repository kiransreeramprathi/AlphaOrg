public class SpoonacularWrapper {
        public boolean vegetarian;
        public void setvegetarian(boolean vegetarian){
            this.vegetarian=vegetarian;
        }
        public boolean getvegetarian(){
            return vegetarian;
        }
        public boolean vegan;
        public void setvegan(boolean vegan){
            this.vegan=vegan;
        }
        public boolean getvegan(){
            return vegan;
        }
        public boolean glutenFree;
        public void setglutenFree(boolean glutenFree){
            this.glutenFree=glutenFree;
        }
        public boolean getglutenFree(){
            return glutenFree;
        }
       private list<extendedIngredients>extendedIngredients;
        public void setextendedIngredients(list<extendedIngredients> extendedIngredients){
            this.extendedIngredients=extendedIngredients;
        }
        public list<extendedIngredients> getextendedIngredients(){
            return extendedIngredients;
        }
    }