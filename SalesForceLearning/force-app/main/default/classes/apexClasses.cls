public with sharing class apexClasses {

    //Method
    public static void apexClasses() {
        apexPropertyClass propObj = new apexPropertyClass();

        propObj.property = 10;
        system.debug(propObj.property);

    }

    // Inner class

    public class apexPropertyClass{

        //PROPERTY DECLARATION

        public Integer property{
            get{
                return property;
            }
            set{
                property = value;
            }
        }

    }







    // Inheritance 

    public virtual class shape{

        private Integer length = 10;
        private Integer breadth = 20;
        private Integer radius  = 10;


        public virtual void area(){
            system.debug('Area of :');
        }

        // Get length
        public virtual Integer getLength(){
            return length;
        }

        // Get breadth

        public virtual Integer getBreadth(){
            return breadth;       
        }

        public virtual Integer getRadius(){
            return radius;
        }
    
    }
    public class rectangle extends shape{
        public override void area(){
            Integer answer = getLength() * getBreadth();
            system.debug('Area of Rectangle :' +answer); 
        }
    }

    public class circle extends shape{
        public override void area(){
            Decimal answer  = Math.PI * Math.pow(getRadius(),2);
            system.debug('Area of circle is : '+answer); 
        }
    }

    public class triangle extends shape{

        public override void area(){

            Decimal answer = (0.5) * (getLength() * getBreadth());
            system.debug('Area of Triangle is : '+answer);
        }
    }

}
