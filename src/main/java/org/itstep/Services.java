package org.itstep;

public class Services {
    String name;
    String price;
    String times;

    public Services(String name, String price, String times) {
        this.name = name;
        this.price = price;
        this.times = times;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPrice() {
        return price;
    }
    public void setPrice(String price) {
        this.price = price;
    }
    public String getTimes() {
        return times;
    }
    public void setTimes(String times) {
        this.times = times;
    }
}
